import FeatherOpenAPIKit

extension User.Account {

    public enum Responses: Component {

        enum Detail: JSONResponse {
            static let description = "User Account detail object"
            static let schema: Schema.Type = Schemas.Detail.self
        }

        enum List: JSONResponse {
            static let description = "User Account list object"
            static let schema: Schema.Type = Schemas.List.self
        }
    }
}
