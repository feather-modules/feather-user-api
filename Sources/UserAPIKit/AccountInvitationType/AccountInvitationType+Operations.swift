import FeatherAPIKit
import FeatherOpenAPIKit

extension User.AccountInvitationType {

    enum Operations {

        enum List: Operation {
            static let security: [SecurityScheme.Type] = .shared
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "List user account invitation types"
            static let description =
                "List available user account invitation types"
            static let parameters: [Parameter.Type] =
                [
                    Parameters.List.Sort.self
                ] + Feather.Core.Parameters.List.parameters
            static let responses: [OperationResponse] = [
                .ok(Responses.List.self),
                .badRequest,
                .unauthorized,
                .forbidden,
            ]
        }

    }
}
