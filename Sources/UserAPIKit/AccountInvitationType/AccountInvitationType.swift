import FeatherOpenAPIKit

extension User {
    public enum AccountInvitationType: Component {
        static let path: Path = User.path / "account-invitation-type"
    }
}
