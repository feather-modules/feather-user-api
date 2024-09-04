import FeatherOpenAPIKit
import OpenAPIKit

extension Oauth {

    public enum Headers: Component {

        enum Location: Header {
            static let name = "Location"
            static let description: String = "Location Header"
            static var schema: Schema.Type = Schemas.LocationHeader.self
        }

    }
}
