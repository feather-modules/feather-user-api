import FeatherOpenAPIKit

extension User.Oauth2 {

    enum PathItems {
        
        enum Exchange: PathItem {
            static let path: Path = User.Oauth2.path / "token"
            static let post: Operation.Type? = Operations.Exchange.self
        }

        enum Main: PathItem {
            static let path: Path = User.Oauth2.path
            static let get: Operation.Type? = Operations.AuthorizeGet.self
            static let post: Operation.Type? = Operations.AuthorizePost.self
        }
    }
}
