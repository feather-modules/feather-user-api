import FeatherOpenAPIKit

extension User.AccountInvitation {

    public enum Parameters {

        public enum Id: PathParameter {
            public static let name = "id"
            public static let description = "User account invitation identifier"
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
