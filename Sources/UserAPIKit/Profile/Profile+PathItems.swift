import FeatherOpenAPIKit

extension User.Profile {

    public enum PathItems {

        public enum Me: PathItem {
            public static let path: Path = User.Profile.path / "me"
            public static let get: Operation.Type? = Operations.Me.self
        }

        public enum Main: PathItem {
            public static let path: Path = User.Profile.path
            public static let get: Operation.Type? = Operations.List.self
            //public static let post: Operation.Type? = Operations.Create.self
        }

        enum Identified: PathItem {
            static let path: Path = Main.path / Parameters.Id.path
            static let parameters: [Parameter.Type] = [
                Parameters.Id.self
            ]
            static let delete: Operation.Type? = Operations.Delete.self
            static let get: Operation.Type? = Operations.Detail.self
            static let put: Operation.Type? = Operations.Update.self
            static let patch: Operation.Type? = Operations.Patch.self
        }

        enum Management {
            enum Main: PathItem {
                static let path: Path = User.Profile.path
                static let get: Operation.Type? = Operations.List.self
                //static let post: Operation.Type? = Operations.Create.self
            }

            enum Identified: PathItem {
                static let path: Path = Main.path / Parameters.Id.path
                static let parameters: [Parameter.Type] = [
                    Parameters.Id.self
                ]
                static let delete: Operation.Type? = Operations.Delete.self
                static let get: Operation.Type? = Operations.Detail.self
                static let put: Operation.Type? = Operations.Update.self
                static let patch: Operation.Type? = Operations.Patch.self
            }
        }
    }
}
