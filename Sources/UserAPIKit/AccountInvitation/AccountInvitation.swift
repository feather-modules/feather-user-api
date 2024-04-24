import FeatherOpenAPIKit

extension User {
    public enum AccountInvitation: Component {
        static let path: Path = User.path / "account-invitation"
    }
}
