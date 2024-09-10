import FeatherAPIKit
import FeatherOpenAPIKit
import SystemAPIKit

extension User.Account {

    public enum Schemas: Component {

        public enum Id: IDSchema {
            public static let description = "Unique user account identifier"
        }

        public enum Email: EmailSchema {
            public static let description = "E-mail address of the user"
            public static let examples = [
                "info@binarybirds.com"
            ]
        }

        public enum Password: PasswordSchema {
            public static let description = "Password of the user"
            public static let examples = [
                "ChangeMe1"
            ]
        }

        enum ImageKey: TextSchema {
            static let description = "Profile image key of the role"
            static let examples = [
                "345jnkjwevnjk4n56"
            ]
        }

        enum FirstName: TextSchema {
            static let description = "Profile first name"
            static let examples = [
                "John"
            ]
        }

        enum LastName: TextSchema {
            static let description = "Profile last name"
            static let examples = [
                "Doe"
            ]
        }

        enum Position: TextSchema {
            static let description = "Profile position"
            static let examples = [
                "Doe"
            ]
        }

        public enum PublicEmail: EmailSchema {
            public static let description =
                "Public e-mail address of the profile"
            public static let examples = [
                "info@binarybirds.com"
            ]
        }

        enum Phone: TextSchema {
            static let description = "Profile phone"
            static let examples = [
                "+12425346356"
            ]
        }

        enum Web: TextSchema {
            static let description = "Profile web page"
            static let examples = [
                "https://google.nl"
            ]
        }

        enum Lat: DoubleSchema {
            static let description = "Profile last location latitude"
            static let minimumValue: Double? = 0.0
        }

        enum Lon: DoubleSchema {
            static let description = "Profile last location longitude"
            static let minimumValue: Double? = 0.0
        }

        enum LastLocationUpdate: DateTimeSchema {
            static let description = "Profile last location update"
            static let examples = [
                "2023-02-10T09:20:15.393Z"
            ]
        }

        public enum Roles: ArraySchema {
            public static let description = "User roles"
            public static let items: Schema.Type = User.Role.Schemas.Reference
                .self
        }

        public enum RoleKeys: ArraySchema {
            public static let description = "User role keys"
            public static let items: Schema.Type = User.Role.Schemas.Key.self
        }
        
        enum Permissions: ArraySchema {
            static let items: Schema.Type = System.Permission.Schemas.Key.self
            static let description = ""
        }

        // MARK: - list

        public enum List: ObjectSchema {

            public enum Item: ObjectSchema {
                public static let description = "User account list item"
                public static let properties: [ObjectSchemaProperty] = [
                    .init("id", Id.self),
                    .init("email", Email.self),
                    .init("firstName", FirstName.self, required: false),
                    .init("lastName", LastName.self, required: false),
                ]
            }

            public enum Items: ArraySchema {
                public static let description = "User account list items"
                public static let items: Schema.Type = Item.self
            }

            public enum Sort: EnumSchema {
                public static let description = "The sort key for the list"
                public static let allowedValues = [
                    "email", "firstName", "lastName",
                ]
                public static let defaultValue = "email"
            }

            public static let description = "User account list"
            public static let properties: [ObjectSchemaProperty] =
                [
                    .init("items", Items.self),
                    .init("sort", Sort.self, required: false),
                ] + Feather.Core.Schemas.List.properties
        }

        // MARK: -

        public enum Reference: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("id", Id.self),
                .init("email", Email.self),
                .init("firstName", FirstName.self, required: false),
                .init("lastName", LastName.self, required: false),
            ]
        }

        public enum Detail: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("id", Id.self),
                .init("email", Email.self),
                .init("firstName", FirstName.self, required: false),
                .init("lastName", LastName.self, required: false),
                .init("imageKey", ImageKey.self, required: false),
                .init("roles", Roles.self),
                .init("permissions", Permissions.self),
            ]
        }

        public enum Create: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("email", Email.self),
                .init("password", Password.self),
                .init("firstName", FirstName.self, required: false),
                .init("lastName", LastName.self, required: false),
                .init("imageKey", ImageKey.self, required: false),
                .init("roleKeys", RoleKeys.self),
            ]
        }

        public enum Update: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("email", Email.self),
                .init("firstName", FirstName.self, required: false),
                .init("lastName", LastName.self, required: false),
                .init("imageKey", ImageKey.self, required: false),
                .init("password", Password.self, required: false),
                .init("roleKeys", RoleKeys.self),
            ]
        }

        public enum Patch: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("email", Email.self, required: false),
                .init("firstName", FirstName.self, required: false),
                .init("lastName", LastName.self, required: false),
                .init("imageKey", ImageKey.self, required: false),
                .init("password", Password.self, required: false),
                .init("roleKeys", RoleKeys.self, required: false),
            ]
        }
    }
}
