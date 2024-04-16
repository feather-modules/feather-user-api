import FeatherOpenAPIKit

extension User {
    public enum PushToken: Component {
        static let path: Path = User.path / "pushtoken"
    }
}
