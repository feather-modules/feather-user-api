import FeatherOpenAPIKit

extension User.AccountInvitationType {

    enum Responses {

        enum List: JSONResponse {
            static let description = "User Account invitation type list object"
            static let schema: Schema.Type = Schemas.List.self
        }
    }
}
