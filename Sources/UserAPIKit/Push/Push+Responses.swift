import FeatherOpenAPIKit

extension User.Push {

    enum Responses {

        enum List: JSONResponse {
            static let description = "Push message list object"
            static let schema: Schema.Type = Schemas.List.self
        }

        enum Detail: JSONResponse {
            static let description = "Push message detail object"
            static let schema: Schema.Type = Schemas.Detail.self
        }

    }
}
