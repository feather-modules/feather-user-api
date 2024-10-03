import FeatherAPIKit
import FeatherOpenAPIKit
import SystemAPIKit

extension User.Group {

    public enum Schemas: Component {

        public enum Id: IDSchema {
            public static let description = "Unique user group identifier"
        }

        enum Name: TextSchema {
            static let description = "Group name"
            static let examples = [
                "Best group"
            ]
        }

        // MARK: - list

        public enum List: ObjectSchema {

            public enum Item: ObjectSchema {
                public static let description = "User group list item"
                public static let properties: [ObjectSchemaProperty] = [
                    .init("id", Id.self),
                    .init("name", Name.self),
                ]
            }

            public enum Items: ArraySchema {
                public static let description = "User group list items"
                public static let items: Schema.Type = Item.self
            }

            public enum Sort: EnumSchema {
                public static let description = "The sort key for the list"
                public static let allowedValues = [
                    "name"
                ]
                public static let defaultValue = "name"
            }

            public static let description = "User group list"
            public static let properties: [ObjectSchemaProperty] =
                [
                    .init("items", Items.self),
                    .init("sort", Sort.self, required: false),
                ] + Feather.Core.Schemas.List.properties
        }
        
        public enum UserList: ObjectSchema {

            public enum Item: ObjectSchema {
                public static let description = "User group user list item"
                public static let properties: [ObjectSchemaProperty] = [
                    .init("groupId", Id.self),
                    .init("account", User.Account.Schemas.Reference.self),
                ]
            }

            public enum Items: ArraySchema {
                public static let description = "User list of a user group"
                public static let items: Schema.Type = Item.self
            }

            
            public static let description = "User list of a user group"
            public static let properties: [ObjectSchemaProperty] =
                [
                    .init("items", Items.self),
                    .init("sort", User.Account.Schemas.List.Sort.self, required: false),
                ] + Feather.Core.Schemas.List.properties
        }

        // MARK: -

        public enum Reference: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("id", Id.self),
                .init("name", Name.self),
            ]
        }

        public enum Detail: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("id", Id.self),
                .init("name", Name.self),
            ]
        }

        public enum Create: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("name", Name.self),
            ]
        }

        public enum Update: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("id", Id.self),
                .init("name", Name.self),
            ]
        }

    }
}
