import FeatherOpenAPIKit

extension User.AccountInvitation {

    enum RequestBodies {

        enum Create: JSONBody {
            static let description = "Create request body"
            static let schema: Schema.Type = Schemas.Create.self
        }
    }
}
