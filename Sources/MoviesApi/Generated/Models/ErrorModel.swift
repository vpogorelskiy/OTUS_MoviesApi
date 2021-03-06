//
// ErrorModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ErrorModel: Codable, Hashable {

    public var response: String?
    public var error: String?

    public init(response: String? = nil, error: String? = nil) {
        self.response = response
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case response = "Response"
        case error = "Error"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(response, forKey: .response)
        try container.encodeIfPresent(error, forKey: .error)
    }
}

