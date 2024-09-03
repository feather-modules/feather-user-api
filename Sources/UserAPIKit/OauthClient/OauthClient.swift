import FeatherOpenAPIKit

extension User {
    public enum OauthClient: Component {
        static let path: Path = User.path / "oauth-client"
    }
}
