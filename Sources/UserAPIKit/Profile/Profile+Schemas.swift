import FeatherAPIKit
import FeatherOpenAPIKit
import SystemAPIKit

extension User.Profile {
    
    public enum Schemas: Component {
        
        public enum Id: IDSchema {
            public static let description = "Unique user profile identifier"
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
            public static let description = "Public e-mail address of the profile"
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
        
        public enum List: ObjectSchema {

            public enum Item: ObjectSchema {
                public static let description = "Profile account list item"
                public static let properties: [ObjectSchemaProperty] = [
                    .init("id", Id.self),
                    .init("firstName", FirstName.self),
                    .init("lastName", LastName.self),
                ]
            }

            public enum Items: ArraySchema {
                public static let description = "Profile account list items"
                public static let items: Schema.Type = Item.self
            }

            public enum Sort: EnumSchema {
                public static let description = "The sort key for the list"
                public static let allowedValues = ["email"]
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
                .init("firstName", FirstName.self),
                .init("lastName", LastName.self)
            ]
        }

        public enum Detail: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("id", Id.self),
                .init("accountId", User.Account.Schemas.Id.self),
                .init("firstName", FirstName.self),
                .init("lastName", LastName.self),
                .init("imageKey", ImageKey.self),
                .init("position", Position.self),
                .init("publicEmail", PublicEmail.self),
                .init("phone", Phone.self),
                .init("web", Web.self),
                .init("lat", Lat.self),
                .init("lon", Lon.self),
                .init("lastLocationUpdate", LastLocationUpdate.self)
            ]
        }

        /*public enum Create: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("accountId", User.Account.Schemas.Id.self),
                .init("firstName", FirstName.self, required: false),
                .init("lastName", LastName.self, required: false),
                .init("imageKey", ImageKey.self, required: false),
                .init("position", Position.self, required: false),
                .init("publicEmail", PublicEmail.self, required: false),
                .init("phone", Phone.self, required: false),
                .init("web", Web.self, required: false),
                .init("lat", Lat.self, required: false),
                .init("lon", Lon.self, required: false),
                .init("lastLocationUpdate", LastLocationUpdate.self, required: false)
            ]
        }*/

        public enum Update: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("firstName", FirstName.self, required: false),
                .init("lastName", LastName.self, required: false),
                .init("imageKey", ImageKey.self, required: false),
                .init("position", Position.self, required: false),
                .init("publicEmail", PublicEmail.self, required: false),
                .init("phone", Phone.self, required: false),
                .init("web", Web.self, required: false),
                .init("lat", Lat.self, required: false),
                .init("lon", Lon.self, required: false),
                .init("lastLocationUpdate", LastLocationUpdate.self, required: false)
            ]
        }

        public enum Patch: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("firstName", FirstName.self, required: false),
                .init("lastName", LastName.self, required: false),
                .init("imageKey", ImageKey.self, required: false),
                .init("position", Position.self, required: false),
                .init("publicEmail", PublicEmail.self, required: false),
                .init("phone", Phone.self, required: false),
                .init("web", Web.self, required: false),
                .init("lat", Lat.self, required: false),
                .init("lon", Lon.self, required: false),
                .init("lastLocationUpdate", LastLocationUpdate.self, required: false)
            ]
        }
        
        
    }
    
}
