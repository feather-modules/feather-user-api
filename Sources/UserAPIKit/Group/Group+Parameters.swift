import FeatherOpenAPIKit

extension User.Group {

    public enum Parameters: Component {

        public enum Id: PathParameter {
            public static let name = "groupId"
            public static let description = "User group identifier"
            public static let schema: Schema.Type = Schemas.Id.self
        }

        enum List {
            enum Sort: QueryParameter {
                static let name = "sort"
                static let description = "Sort by parameter"
                static let schema: Schema.Type = Schemas.List.Sort.self
            }
        }
        
        enum Account: QueryParameter {
            static let name = "accountId"
            static let description = "The account id"
            static let schema: Schema.Type = User.Account.Schemas.Id.self
            static let required = true
        }
        
    }
}
