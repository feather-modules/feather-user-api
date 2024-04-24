import FeatherOpenAPIKit

extension User.AccountInvitation {

    enum Responses {

        enum Detail: JSONResponse {
            static let description = "User Account invitation detail object"
            static let schema: Schema.Type = Schemas.Detail.self
        }

        enum List: JSONResponse {
            static let description = "User Account invitation list object"
            static let schema: Schema.Type = Schemas.List.self
        }
    }
}
