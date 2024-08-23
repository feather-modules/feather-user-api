import FeatherOpenAPIKit

extension User.Oauth {

    enum Responses {

        enum RedirectResponse: Response {
            static let description = "Redirect response"
            static let headers: [Header.Type] = [
                Headers.Location.self
            ]
        }

        enum TokenPostResponse: JSONResponse {
            static let description = "code exchange response object"
            static let schema: Schema.Type = Schemas.TokenPostResponse.self
        }

    }
}
