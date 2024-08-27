import FeatherOpenAPIKit

extension User.Oauth {

    enum PathItems {

        enum Exchange: PathItem {
            static let path: Path = User.Oauth.path / "token"
            static let post: Operation.Type? = Operations.Exchange.self
        }

        enum Main: PathItem {
            static let path: Path = User.Oauth.path
            static let get: Operation.Type? = Operations.AuthorizeGet.self
            static let post: Operation.Type? = Operations.AuthorizePost.self
        }
    }
}
