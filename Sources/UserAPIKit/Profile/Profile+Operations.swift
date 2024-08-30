import FeatherAPIKit
import FeatherOpenAPIKit

extension User.Profile {

    public enum Operations {

        public enum Me: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "Current account's user profile detail"
            public static let description = """
                Get the details of the currently logged in account's user profile
                """
            public static let responses: [OperationResponse] = [
                .ok(Responses.Detail.self),
                .unauthorized,
            ]
        }

        public enum List: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "List User Profiles"
            public static let description = "List available User Profiles"
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

        /*public enum Create: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "Create a User Profile"
            public static let description = "Creates a new User Profile"
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
        }*/

        public enum Delete: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "Delete one User Profile"
            public static let description =
                "Delete one User Profile using identifier"
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
            public static let summary = "User Profile details"
            public static let description = "Get the details of a User Profile"
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
            public static let summary = "Update a User Profile"
            public static let description = "Updates a User Profile"
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
            public static let summary = "Patch a User Profile"
            public static let description = "Patch a given User Profile"
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
