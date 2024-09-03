import FeatherOpenAPIKit

extension User {
    public enum Oauth: Component {
        static let path: Path = User.path / "oauth"
    }
}
