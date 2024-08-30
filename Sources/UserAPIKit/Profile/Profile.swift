import FeatherOpenAPIKit

extension User {
    public enum Profile: Component {
        static let path: Path = User.path / "profiles"
    }
}
