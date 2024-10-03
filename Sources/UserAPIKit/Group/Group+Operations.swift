import FeatherAPIKit
import FeatherOpenAPIKit

extension User.Group {

    public enum Operations {

        public enum List: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "List User Groups"
            public static let description = "List available User Groups"
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
        
        public enum ListUsers: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "List all Users from a Group"
            public static let description = "List available Users from a Group"
            public static let parameters: [Parameter.Type] =
                [
                    User.Account.Parameters.List.Sort.self
                ] + Feather.Core.Parameters.List.parameters
            public static let responses: [OperationResponse] = [
                .ok(Responses.UserList.self),
                .badRequest,
                .unauthorized,
                .forbidden,
            ]
        }

        public enum Create: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "Create a User Group"
            public static let description = "Creates a new User Group"
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
            public static let summary = "Delete one User Group"
            public static let description =
                "Delete one User Group using identifier"
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
            public static let summary = "User Group details"
            public static let description = "Get the details of a User Group"
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
            public static let summary = "Update a User Group"
            public static let description = "Updates a User Group"
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
        
        // MARK: - user
        
        public enum AddUser: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "Adds a user to the User Group"
            public static let description = "Adds a new user to the User Group"
            public static let parameters: [Parameter.Type] = [
                Parameters.Account.self
            ]
            public static let responses: [OperationResponse] = [
                .ok(Responses.UserList.self),
                .badRequest,
                .unauthorized,
                .forbidden,
                .unsupportedMediaType,
                .unprocessableContent,
            ]
        }

        public enum DeleteUser: Operation {
            public static let security: [SecurityScheme.Type] = .shared
            public static let tag: Tag.Type = Tags.Main.self
            public static let summary = "Delete one User from the User Group"
            public static let description =
                "Delete one User from the User Group using identifier"
            public static let parameters: [Parameter.Type] = [
                Parameters.Account.self
            ]
            public static let responses: [OperationResponse] = [
                .ok(Responses.UserList.self),
                .badRequest,
                .unauthorized,
                .forbidden,
                .notFound,
                .unprocessableContent,
            ]
        }

    }
}
