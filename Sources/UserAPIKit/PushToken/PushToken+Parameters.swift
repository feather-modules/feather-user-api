import FeatherOpenAPIKit

extension User.PushToken {

    enum Parameters {

        enum Id: PathParameter {
            static let name = "pushTokenId"
            static let description = "User push token identifier"
            static let schema: Schema.Type = Schemas.Id.self
        }

    }
}
