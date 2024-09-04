import FeatherAPIKit
import FeatherOpenAPIKit
import Foundation
import OauthAPIKit
import OpenAPIKit
import SystemAPIKit
import UserAPIKit

struct OpenAPIDocument: Document {

    let components: [Component.Type] = [
        Feather.Core.self,
        System.self,
        User.self,
        Oauth.self,
    ]

    func openAPIDocument() throws -> OpenAPI.Document {
        let dateString = DateFormatter.localizedString(
            from: Date(),
            dateStyle: .medium,
            timeStyle: .medium
        )

        return try composedDocument(
            info: .init(
                title: "Feather - User API",
                description: """
                    The entire API definition for the Feather User API service.
                    (Generated on: \(dateString))
                    """,
                contact: .init(
                    name: "Binary Birds",
                    url: .init(string: "https://binarybirds.com")!,
                    email: "info@binarybirds.com"
                ),
                version: "1.0.0"
            ),
            servers: [
                .init(
                    url: .init(string: "http://localhost:8080")!,
                    description: "dev"
                )
            ]
        )
    }
}
