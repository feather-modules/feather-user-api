import FeatherOpenAPIKit

extension User {
    public enum Group: Component {
        static let path: Path = User.path / "groups"
    }
}
