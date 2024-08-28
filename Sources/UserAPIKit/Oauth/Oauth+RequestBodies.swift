import FeatherOpenAPIKit

extension User.Oauth {

    enum RequestBodies {

        enum AuthorizePostRequest: JSONBody {
            static let description = "get authorization code request body"
            static let schema: Schema.Type = Schemas.AuthorizePostRequest.self
        }

        enum TokenPostRequest: FormBody {
            static let description = "exchange token request body"
            static let schema: Schema.Type = Schemas.TokenPostRequest.self
        }

    }
}
