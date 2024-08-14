import FeatherOpenAPIKit

extension User.Oauth2 {

    enum Parameters {

        enum ClientID: QueryParameter {
            static let name = "clientID"
            static let description = "clientID"
            static let schema: Schema.Type = Schemas.ClientID.self
            static let required = false
        }
        
        enum RedirectURI: QueryParameter {
            static let name = "redirectURI"
            static let description = "redirectURI"
            static let schema: Schema.Type = Schemas.RedirectURI.self
            static let required = false
        }
        
        enum Scope: QueryParameter {
            static let name = "scope"
            static let description = "scope"
            static let schema: Schema.Type = Schemas.Scope.self
            static let required = false
        }
        
        enum State: QueryParameter {
            static let name = "state"
            static let description = "state"
            static let schema: Schema.Type = Schemas.State.self
            static let required = false
        }
        
        enum ResponseType: QueryParameter {
            static let name = "responseType"
            static let description = "responseType"
            static let schema: Schema.Type = Schemas.ResponseType.self
            static let required = false
        }
    }
    
}
