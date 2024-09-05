import FeatherOpenAPIKit

extension User.AccountInvitationType {

    enum PathItems {

        enum Main: PathItem {
            static let path: Path = User.AccountInvitationType.path
            static let get: Operation.Type? = Operations.List.self
        }

    }
}
