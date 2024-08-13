import FeatherOpenAPIKit

extension User.Oauth2 {

    enum Operations {

        enum AuthorizeGet: Operation {
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "start authorize"
            static let description = "start authorize"
            static let requestBody: RequestBody.Type? = RequestBodies.AuthorizeGetRequest.self
            static let responses: [OperationResponse] = [
                .ok,
                .badRequest,
                .found,
                .unauthorized,
                .forbidden
            ]
        }

        enum AuthorizePost: Operation {
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "get authorize code"
            static let description = "get authorize code and return it"
            static let requestBody: RequestBody.Type? = RequestBodies.AuthorizePostRequest.self
            static let responses: [OperationResponse] = [
                .ok,
                .badRequest,
                .found,
                .unauthorized,
                .forbidden
            ]
        }
        
        enum Exchange: Operation {
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "exchange authorization code"
            static let description = "exchange authorization code to a JWT"
            static let requestBody: RequestBody.Type? = RequestBodies.ExchangePostRequest.self
            static let responses: [OperationResponse] = [
                .ok(Responses.ExchangePostResponse.self),
                .badRequest,
                .found,
                .unauthorized,
                .forbidden
            ]
        }
        
    }
}
