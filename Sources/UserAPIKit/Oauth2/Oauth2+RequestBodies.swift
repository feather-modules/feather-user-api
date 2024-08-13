import FeatherOpenAPIKit

extension User.Oauth2 {

    enum RequestBodies {

        enum AuthorizeGetRequest: JSONBody {
            static let description = "start authorization request body"
            static let schema: Schema.Type = Schemas.AuthorizeGetRequest.self
        }
        
        enum AuthorizePostRequest: JSONBody {
            static let description = "get authorization code request body"
            static let schema: Schema.Type = Schemas.AuthorizePostRequest.self
        }
        
        enum ExchangePostRequest: JSONBody {
            static let description = "exchange token request body"
            static let schema: Schema.Type = Schemas.ExchangePostRequest.self
        }
        
    }
}
