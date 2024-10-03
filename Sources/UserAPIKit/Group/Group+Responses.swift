import FeatherOpenAPIKit

extension User.Group {

    public enum Responses: Component {

        enum Detail: JSONResponse {
            static let description = "User Group detail object"
            static let schema: Schema.Type = Schemas.Detail.self
        }

        enum List: JSONResponse {
            static let description = "User Group list object"
            static let schema: Schema.Type = Schemas.List.self
        }
        
        enum UserList: JSONResponse {
            static let description = "User Group user list object"
            static let schema: Schema.Type = Schemas.UserList.self
        }
    }
}
