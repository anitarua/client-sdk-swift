// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: webhook.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Webhook__WebhookId {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var cacheName: String = String()

  /// This is limited to 128 chars.
  public var webhookName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Webhook__Webhook {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var webhookID: Webhook__WebhookId {
    get {return _webhookID ?? Webhook__WebhookId()}
    set {_webhookID = newValue}
  }
  /// Returns true if `webhookID` has been explicitly set.
  public var hasWebhookID: Bool {return self._webhookID != nil}
  /// Clears the value of `webhookID`. Subsequent reads from it will return its default value.
  public mutating func clearWebhookID() {self._webhookID = nil}

  public var topicName: String = String()

  public var destination: Webhook__WebhookDestination {
    get {return _destination ?? Webhook__WebhookDestination()}
    set {_destination = newValue}
  }
  /// Returns true if `destination` has been explicitly set.
  public var hasDestination: Bool {return self._destination != nil}
  /// Clears the value of `destination`. Subsequent reads from it will return its default value.
  public mutating func clearDestination() {self._destination = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _webhookID: Webhook__WebhookId? = nil
  fileprivate var _destination: Webhook__WebhookDestination? = nil
}

public struct Webhook__PutWebhookRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var webhook: Webhook__Webhook {
    get {return _webhook ?? Webhook__Webhook()}
    set {_webhook = newValue}
  }
  /// Returns true if `webhook` has been explicitly set.
  public var hasWebhook: Bool {return self._webhook != nil}
  /// Clears the value of `webhook`. Subsequent reads from it will return its default value.
  public mutating func clearWebhook() {self._webhook = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _webhook: Webhook__Webhook? = nil
}

public struct Webhook__PutWebhookResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var secretString: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Webhook__DeleteWebhookRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var webhookID: Webhook__WebhookId {
    get {return _webhookID ?? Webhook__WebhookId()}
    set {_webhookID = newValue}
  }
  /// Returns true if `webhookID` has been explicitly set.
  public var hasWebhookID: Bool {return self._webhookID != nil}
  /// Clears the value of `webhookID`. Subsequent reads from it will return its default value.
  public mutating func clearWebhookID() {self._webhookID = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _webhookID: Webhook__WebhookId? = nil
}

public struct Webhook__DeleteWebhookResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Webhook__ListWebhookRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var cacheName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Webhook__ListWebhooksResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var webhook: [Webhook__Webhook] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Webhook__WebhookDestination {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var kind: Webhook__WebhookDestination.OneOf_Kind? = nil

  public var postURL: String {
    get {
      if case .postURL(let v)? = kind {return v}
      return String()
    }
    set {kind = .postURL(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Kind: Equatable {
    case postURL(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Webhook__WebhookDestination.OneOf_Kind, rhs: Webhook__WebhookDestination.OneOf_Kind) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.postURL, .postURL): return {
        guard case .postURL(let l) = lhs, case .postURL(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Webhook__WebhookId: @unchecked Sendable {}
extension Webhook__Webhook: @unchecked Sendable {}
extension Webhook__PutWebhookRequest: @unchecked Sendable {}
extension Webhook__PutWebhookResponse: @unchecked Sendable {}
extension Webhook__DeleteWebhookRequest: @unchecked Sendable {}
extension Webhook__DeleteWebhookResponse: @unchecked Sendable {}
extension Webhook__ListWebhookRequest: @unchecked Sendable {}
extension Webhook__ListWebhooksResponse: @unchecked Sendable {}
extension Webhook__WebhookDestination: @unchecked Sendable {}
extension Webhook__WebhookDestination.OneOf_Kind: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "webhook"

extension Webhook__WebhookId: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + "._WebhookId"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "cache_name"),
    2: .standard(proto: "webhook_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.cacheName) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.webhookName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.cacheName.isEmpty {
      try visitor.visitSingularStringField(value: self.cacheName, fieldNumber: 1)
    }
    if !self.webhookName.isEmpty {
      try visitor.visitSingularStringField(value: self.webhookName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Webhook__WebhookId, rhs: Webhook__WebhookId) -> Bool {
    if lhs.cacheName != rhs.cacheName {return false}
    if lhs.webhookName != rhs.webhookName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Webhook__Webhook: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + "._Webhook"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "webhook_id"),
    2: .standard(proto: "topic_name"),
    3: .same(proto: "destination"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._webhookID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.topicName) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._destination) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._webhookID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.topicName.isEmpty {
      try visitor.visitSingularStringField(value: self.topicName, fieldNumber: 2)
    }
    try { if let v = self._destination {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Webhook__Webhook, rhs: Webhook__Webhook) -> Bool {
    if lhs._webhookID != rhs._webhookID {return false}
    if lhs.topicName != rhs.topicName {return false}
    if lhs._destination != rhs._destination {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Webhook__PutWebhookRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + "._PutWebhookRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "webhook"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._webhook) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._webhook {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Webhook__PutWebhookRequest, rhs: Webhook__PutWebhookRequest) -> Bool {
    if lhs._webhook != rhs._webhook {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Webhook__PutWebhookResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + "._PutWebhookResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "secret_string"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.secretString) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.secretString.isEmpty {
      try visitor.visitSingularStringField(value: self.secretString, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Webhook__PutWebhookResponse, rhs: Webhook__PutWebhookResponse) -> Bool {
    if lhs.secretString != rhs.secretString {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Webhook__DeleteWebhookRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + "._DeleteWebhookRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "webhook_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._webhookID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._webhookID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Webhook__DeleteWebhookRequest, rhs: Webhook__DeleteWebhookRequest) -> Bool {
    if lhs._webhookID != rhs._webhookID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Webhook__DeleteWebhookResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + "._DeleteWebhookResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Webhook__DeleteWebhookResponse, rhs: Webhook__DeleteWebhookResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Webhook__ListWebhookRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + "._ListWebhookRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "cache_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.cacheName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.cacheName.isEmpty {
      try visitor.visitSingularStringField(value: self.cacheName, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Webhook__ListWebhookRequest, rhs: Webhook__ListWebhookRequest) -> Bool {
    if lhs.cacheName != rhs.cacheName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Webhook__ListWebhooksResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + "._ListWebhooksResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "webhook"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.webhook) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.webhook.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.webhook, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Webhook__ListWebhooksResponse, rhs: Webhook__ListWebhooksResponse) -> Bool {
    if lhs.webhook != rhs.webhook {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Webhook__WebhookDestination: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + "._WebhookDestination"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "post_url"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.kind != nil {try decoder.handleConflictingOneOf()}
          self.kind = .postURL(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if case .postURL(let v)? = self.kind {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Webhook__WebhookDestination, rhs: Webhook__WebhookDestination) -> Bool {
    if lhs.kind != rhs.kind {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
