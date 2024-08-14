import FeatherOpenAPIKit

extension User.Oauth2 {

    enum Responses {
        
        enum RedirectResponse: JSONResponse {
            static let description = "Redirect response"
            static let headers: [Header.Type] = [
                Headers.Location.self
            ]
        }

        enum ExchangePostResponse: JSONResponse {
            static let description = "code exchange response object"
            static let schema: Schema.Type = Schemas.ExchangePostResponse.self
        }

    }
}
