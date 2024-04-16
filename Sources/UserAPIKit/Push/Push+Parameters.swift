import FeatherOpenAPIKit

extension User.Push {

    enum Parameters {

        enum Id: PathParameter {
            static let name = "pushId"
            static let description = "Push message id"
            static let schema: Schema.Type = Schemas.Id.self
        }

        enum List {
            enum Sort: QueryParameter {
                static let name = "sort"
                static let description = "Sort by parameter"
                static let schema: Schema.Type = Schemas.List.Sort.self
            }
        }
    }
}
