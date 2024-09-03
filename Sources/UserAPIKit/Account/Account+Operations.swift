import FeatherAPIKit
import FeatherOpenAPIKit

extension User.Account {

    public enum Operations {

        public enum Me: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "Current user account details"
            public static let description = """
                Get the details of the currently logged in user account based on the auth token.
                """
            public static let responses: [OperationResponse] = [
                .ok(Responses.Detail.self),
                .unauthorized,
            ]
        }

        public enum List: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "List User Accounts"
            public static let description = "List available User Accounts"
            public static let parameters: [Parameter.Type] =
                [
                    Parameters.List.Sort.self
                ] + Feather.Core.Parameters.List.parameters
            public static let responses: [OperationResponse] = [
                .ok(Responses.List.self),
                .badRequest,
                .unauthorized,
                .forbidden,
            ]
        }

        public enum Create: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "Create a User Account"
            public static let description = "Creates a new User Account"
            public static let requestBody: RequestBody.Type? = RequestBodies
                .Create.self
            public static let responses: [OperationResponse] = [
                .ok(Responses.Detail.self),
                .badRequest,
                .unauthorized,
                .forbidden,
                .unsupportedMediaType,
                .unprocessableContent,
            ]
        }

        public enum Delete: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "Delete one User Account"
            public static let description =
                "Delete one User Account using identifier"
            public static let responses: [OperationResponse] = [
                .noContent,
                .badRequest,
                .unauthorized,
                .forbidden,
                .notFound,
                .unprocessableContent,
            ]
        }

        // MARK: -

        public enum Detail: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "User Account details"
            public static let description = "Get the details of a User Account"
            public static let responses: [OperationResponse] = [
                .ok(Responses.Detail.self),
                .badRequest,
                .unauthorized,
                .forbidden,
                .notFound,
            ]
        }

        public enum Update: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "Update a User Account"
            public static let description = "Updates a User Account"
            public static let requestBody: RequestBody.Type? = RequestBodies
                .Update.self
            public static let responses: [OperationResponse] = [
                .ok(Responses.Detail.self),
                .badRequest,
                .unauthorized,
                .forbidden,
                .notFound,
                .unsupportedMediaType,
                .unprocessableContent,
            ]
        }

        public enum Patch: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "Patch a User Account"
            public static let description = "Patch a given User Account"
            public static let requestBody: RequestBody.Type? = RequestBodies
                .Patch.self
            public static let responses: [OperationResponse] = [
                .ok(Responses.Detail.self),
                .badRequest,
                .unauthorized,
                .forbidden,
                .notFound,
                .unsupportedMediaType,
                .unprocessableContent,
            ]
        }
    }
}
