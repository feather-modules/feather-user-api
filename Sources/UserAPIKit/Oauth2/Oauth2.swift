import FeatherOpenAPIKit

extension User {
    public enum Oauth2: Component {
        static let path: Path = User.path / "oauth"
    }
}



// GET /oauth

// clientID
// redirectURI
// scope
// state
// responseType         // code || token

// POST /oauth

// clientID
// redirectURI
// scope
// state
// responseType
// accountID
// bearerToken
// codeChallenge
// codeChallengeMethod

// POST oauth/token

// grantType
// code
// redirectURI
// clientID
// codeVerifier
