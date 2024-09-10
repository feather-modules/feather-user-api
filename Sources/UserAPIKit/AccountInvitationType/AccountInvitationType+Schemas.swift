import FeatherAPIKit
import FeatherOpenAPIKit

extension User.AccountInvitationType {

    public enum Schemas {

        public enum Key: IDSchema {
            public static let description =
                "Unique user account invitation type identifier"
        }

        enum Title: TextSchema {
            static let description = "Account invitation type title"
            static let examples = [
                "Drive"
            ]
        }

        // MARK: - list

        public enum List: ObjectSchema {

            public enum Item: ObjectSchema {
                public static let description =
                    "User account invitation type list item"
                public static let properties: [ObjectSchemaProperty] = [
                    .init("key", Key.self),
                    .init("title", Title.self),
                ]
            }

            public enum Items: ArraySchema {
                public static let description =
                    "User account invitation list items"
                public static let items: Schema.Type = Item.self
            }

            public enum Sort: EnumSchema {
                public static let description = "The sort key for the list"
                public static let allowedValues = ["title"]
                public static let defaultValue = "title"
            }

            public static let description = "User account invitation type list"
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
                .init("key", Key.self),
                .init("title", Title.self),
            ]
        }

        public enum Detail: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("key", Key.self),
                .init("title", Title.self),
            ]
        }

        public enum Create: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("title", Title.self)
            ]
        }

    }

}
