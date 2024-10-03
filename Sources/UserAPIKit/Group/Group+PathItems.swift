import FeatherOpenAPIKit

extension User.Group {

    public enum PathItems {

        public enum Main: PathItem {
            public static let path: Path = User.Group.path
            public static let get: Operation.Type? = Operations.List.self
            public static let post: Operation.Type? = Operations.Create.self
        }

        enum Identified: PathItem {
            static let path: Path = Main.path / Parameters.Id.path
            static let parameters: [Parameter.Type] = [
                Parameters.Id.self
            ]
            static let delete: Operation.Type? = Operations.Delete.self
            static let get: Operation.Type? = Operations.Detail.self
            static let put: Operation.Type? = Operations.Update.self
        }
        
        enum UserList: PathItem {
            static let path: Path = Main.path / Parameters.Id.path / "users"
            static let parameters: [Parameter.Type] = [
                Parameters.Id.self
            ]
            static let get: Operation.Type? = Operations.ListUsers.self
        }
        
        enum UserObject: PathItem {
            static let path: Path = Main.path / Parameters.Id.path / "user"
            static let parameters: [Parameter.Type] = [
                Parameters.Id.self
            ]
            static let post: Operation.Type? = Operations.AddUser.self
            static let delete: Operation.Type? = Operations.DeleteUser.self
            
        }

    }
}
