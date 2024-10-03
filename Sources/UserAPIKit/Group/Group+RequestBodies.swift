import FeatherOpenAPIKit

extension User.Group {

    enum RequestBodies {

        enum Create: JSONBody {
            static let description = "Create request body"
            static let schema: Schema.Type = Schemas.Create.self
        }

        enum Update: JSONBody {
            static let description = "Update request body"
            static let schema: Schema.Type = Schemas.Update.self
        }

    }
}
