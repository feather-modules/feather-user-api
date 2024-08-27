import FeatherAPIKit
import FeatherOpenAPIKit

extension User.Oauth {

    enum Schemas {

        enum ClientId: TextSchema {
            static let description = "The client id"
            static let examples = [
                "clientId"
            ]
        }

        enum ClientSecret: TextSchema {
            static let description = "The client secret"
            static let examples = [
                "clientSecret"
            ]
        }

        enum RedirectUrl: TextSchema {
            static let description =
                "The url to redirect to after successful request"
            static let examples = [
                "url.com"
            ]
        }

        enum Scope: TextSchema {
            static let description = "Scope like: read write"
            static let examples = [
                "read write"
            ]
        }

        enum State: TextSchema {
            static let description = "Request-specific data"
            static let examples = [
                "kjsngsfgn"
            ]
        }

        enum ResponseType: TextSchema {
            static let description = "Request-specific data"
            static let examples = [
                "code"
            ]
        }

        enum GrantType: TextSchema {
            static let description = "grant type"
            static let examples = [
                "authorization_code/client_credentials"
            ]
        }

        enum Code: TextSchema {
            static let description = "authorization code returned before"
            static let examples = [
                "uiu9879khh"
            ]
        }

        enum JWT: TextSchema {
            static let description = "JWT"
            static let examples = [
                "uiu9879khh.rtzrtz.6hdhfgh"
            ]
        }

        enum LocationHeader: TextSchema {
            static let description = "Location header"
            static let examples: [String] = [
                "http://localhost:8080/redirect?code=asdasfg"
            ]
        }

        enum AuthorizePostRequest: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("clientId", ClientId.self, required: false),
                .init("redirectUrl", RedirectUrl.self, required: false),
                .init("scope", Scope.self, required: false),
                .init("state", State.self, required: false),
                .init("responseType", ResponseType.self, required: false),
                .init(
                    "accountId",
                    User.Account.Schemas.Id.self,
                    required: false
                ),
            ]
        }

        enum TokenPostRequest: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("grantType", GrantType.self, required: false),
                .init("clientId", ClientId.self, required: false),
                .init("clientSecret", ClientSecret.self, required: false),
                .init("code", Code.self, required: false),
                .init("redirectUrl", RedirectUrl.self, required: false),
            ]
        }

        enum TokenPostResponse: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("jwt", JWT.self)
            ]
        }

    }

}
