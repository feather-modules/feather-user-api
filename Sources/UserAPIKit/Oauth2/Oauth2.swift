import FeatherOpenAPIKit

extension User {
    public enum Oauth2: Component {
        static let path: Path = User.path / "oauth"
    }
}
