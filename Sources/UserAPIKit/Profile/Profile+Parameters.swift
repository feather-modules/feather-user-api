import FeatherOpenAPIKit

extension User.Profile {

    public enum Parameters: Component {

        public enum AccountId: PathParameter {
            public static let name = "accountId"
            public static let description = "User account identifier"
            public static let schema: Schema.Type = User.Account.Schemas.Id.self
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
