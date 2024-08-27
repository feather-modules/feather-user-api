import FeatherOpenAPIKit

extension User.Oauth {

    enum PathItems {

        enum Main: PathItem {
            static let path: Path = User.Oauth.path
            static let get: Operation.Type? = Operations.AuthorizeGet.self
            static let post: Operation.Type? = Operations.AuthorizePost.self
        }

        enum TokenReturn: PathItem {
            static let path: Path = User.Oauth.path / "token"
            static let post: Operation.Type? = Operations.TokenReturn.self
        }

    }
}
