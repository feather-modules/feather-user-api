import FeatherOpenAPIKit

extension User.PushToken {

    enum PathItems {

        enum Tokens: PathItem {
            static let path: Path = User.PushToken.path
            static let post: Operation.Type? = Operations.Create.self
        }

        enum Identified: PathItem {
            static let path: Path = Tokens.path / Parameters.Id.path
            static let parameters: [Parameter.Type] = [
                Parameters.Id.self
            ]
            static let put: Operation.Type? = Operations.Update.self
            static let delete: Operation.Type? = Operations.Delete.self
        }
    }
}
