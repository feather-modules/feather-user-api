import FeatherOpenAPIKit

extension User.Oauth {

    enum Parameters {

        enum ClientId: QueryParameter {
            static let name = "clientId"
            static let description = "clientId"
            static let schema: Schema.Type = Schemas.ClientId.self
            static let required = false
        }

        enum RedirectUrl: QueryParameter {
            static let name = "redirectUrl"
            static let description = "Url to redirect to"
            static let schema: Schema.Type = Schemas.RedirectUrl.self
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
