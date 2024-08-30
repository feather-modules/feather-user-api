import FeatherOpenAPIKit

extension User.Profile {

    public enum Responses: Component {

        enum Detail: JSONResponse {
            static let description = "User Profile detail object"
            static let schema: Schema.Type = Schemas.Detail.self
        }

        enum List: JSONResponse {
            static let description = "User Profile list object"
            static let schema: Schema.Type = Schemas.List.self
        }
    }
}
