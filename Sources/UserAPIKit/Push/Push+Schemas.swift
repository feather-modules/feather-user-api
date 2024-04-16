import FeatherAPIKit
import FeatherOpenAPIKit

extension User.Push {

    enum Schemas {

        enum Id: IDSchema {
            static let description = "Unique push identifier"
        }

        enum Title: TextSchema {
            static let description = "Push message title"
            static let examples = [
                "title"
            ]
        }

        enum Message: TextSchema {
            static let description = "Push message"
            static let examples = [
                "message"
            ]
        }

        enum Topic: EnumSchema {
            static let description = "Push message topic type"
            static let allowedValues = ["documentShare", "message"]
            static let examples = [
                "message"
            ]
        }

        enum Date: DateTimeSchema {
            static let description = "Push message create date"
            static let examples = [
                "2023-02-10T09:20:15.393Z"
            ]
        }

        enum Recipients: ArraySchema {
            static let description = "Push message recipients to send"
            public static let items: Schema.Type = User.PushToken.Schemas.Id
                .self
        }

        // MARK: -

        enum List: ObjectSchema {

            enum Item: ObjectSchema {
                static let description = "Push message list item"
                static let properties: [ObjectSchemaProperty] = [
                    .init("id", Id.self),
                    .init("title", Title.self),
                    .init("message", Message.self),
                ]
            }

            enum Items: ArraySchema {
                static let description = "Push message list items"
                static let items: Schema.Type = Item.self
            }

            enum Sort: EnumSchema {
                static let description = "The sort key for the list"
                static let allowedValues = ["title", "message"]
                static let defaultValue = "title"

            }

            static let description = "Push message list"
            static let properties: [ObjectSchemaProperty] =
                [
                    .init("items", Items.self),
                    .init("sort", Sort.self, required: false),
                ] + Feather.Core.Schemas.List.properties
        }

        enum Reference: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("id", Id.self),
                .init("title", Title.self),
                .init("message", Message.self),
            ]
        }

        enum Detail: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("id", Id.self),
                .init("title", Title.self),
                .init("message", Message.self),
                .init("topic", Topic.self),
                .init("date", Date.self),
            ]
        }

        enum Create: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("title", Title.self),
                .init("message", Message.self),
                .init("recipients", Recipients.self),
            ]
        }

    }
}
