import FeatherOpenAPIKit

extension User.Profile {

    public enum Parameters: Component {

        public enum Id: PathParameter {
            public static let name = "profileId"
            public static let description = "User profile identifier"
            public static let schema: Schema.Type = Schemas.Id.self
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
