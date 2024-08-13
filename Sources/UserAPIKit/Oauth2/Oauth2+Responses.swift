import FeatherOpenAPIKit

extension User.Oauth2 {

    enum Responses {

        enum ExchangePostResponse: JSONResponse {
            static let description = "code exchange response object"
            static let schema: Schema.Type = Schemas.ExchangePostResponse.self
        }

    }
}
