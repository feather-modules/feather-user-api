import FeatherAPIKit
import FeatherOpenAPIKit

extension User.AccountInvitation {

    public enum Schemas {

        public enum Id: IDSchema {
            public static let description =
                "Unique user account invitation identifier"
        }

        public enum Email: EmailSchema {
            public static let description = "E-mail address for the invitation"
            public static let examples = [
                "info@binarybirds.com"
            ]
        }

        enum Token: TextSchema {
            static let description = "Account invitation token"
            static let examples = [
                "pjZwJnl7lFIAkyXsvxlni16VHcdGQKlhd8AMh6wSRCRFyHCQrZpwBWesMdH8jSD6"
            ]
        }

        enum Expiration: DateTimeSchema {
            static let description = "Account invitation expiration date"
            static let examples = [
                "2023-02-10T09:20:15.393Z"
            ]
        }

        public enum InvitationTypeKeys: ArraySchema {
            public static let description = "Invitation type keys"
            public static let items: Schema.Type = User.AccountInvitationType
                .Schemas.Key.self
        }

        public enum InvitationTypes: ArraySchema {
            public static let description = "Invitation types"
            public static let items: Schema.Type = User.AccountInvitationType
                .Schemas.Reference
                .self
        }

        // MARK: - list

        public enum List: ObjectSchema {

            public enum Item: ObjectSchema {
                public static let description =
                    "User account invitation list item"
                public static let properties: [ObjectSchemaProperty] = [
                    .init("id", Id.self),
                    .init("email", Email.self),
                ]
            }

            public enum Items: ArraySchema {
                public static let description =
                    "User account invitation list items"
                public static let items: Schema.Type = Item.self
            }

            public enum Sort: EnumSchema {
                public static let description = "The sort key for the list"
                public static let allowedValues = ["email"]
                public static let defaultValue = "email"
            }

            public static let description = "User account invitation list"
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
            ]
        }

        public enum Detail: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("id", Id.self),
                .init("email", Email.self),
                .init("token", Token.self),
                .init("expiration", Expiration.self),
                .init("invitationTypes", InvitationTypes.self),
            ]
        }

        public enum Create: ObjectSchema {
            public static let description = ""
            public static let properties: [ObjectSchemaProperty] = [
                .init("email", Email.self),
                .init("invitationTypeKeys", InvitationTypeKeys.self),
            ]
        }

    }
}
