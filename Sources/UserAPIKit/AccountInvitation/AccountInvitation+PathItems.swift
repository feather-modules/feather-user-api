import FeatherOpenAPIKit

extension User.AccountInvitation {

    enum PathItems {

        enum Main: PathItem {
            static let path: Path = User.AccountInvitation.path
            static let get: Operation.Type? = Operations.List.self
            static let post: Operation.Type? = Operations.Create.self
        }

        enum Identified: PathItem {
            static let path: Path = Main.path / Parameters.Id.path
            static let parameters: [Parameter.Type] = [
                Parameters.Id.self
            ]
            static let delete: Operation.Type? = Operations.Delete.self
            static let get: Operation.Type? = Operations.Detail.self
        }
    }
}
