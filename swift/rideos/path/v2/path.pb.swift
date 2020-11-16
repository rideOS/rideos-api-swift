// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: rideos/path/v2/path.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

//
// Copyright 2018-2019 rideOS, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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

public struct Rideos_Path_V2_PathRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of waypoints the path needs to pass through, at least two waypoints are required.
  public var waypoints: [Rideos_Path_V2_Waypoint] = []

  /// Time of departure from the origin (optional). If not specified, departure time is assumed to be the time at
  /// which the path request is processed.
  public var departureTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _departureTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_departureTime = newValue}
  }
  /// Returns true if `departureTime` has been explicitly set.
  public var hasDepartureTime: Bool {return self._departureTime != nil}
  /// Clears the value of `departureTime`. Subsequent reads from it will return its default value.
  public mutating func clearDepartureTime() {self._departureTime = nil}

  public var excludedEdges: [SwiftProtobuf.Google_Protobuf_Struct] = []

  /// Deprecated. This parameter was only used for analytic use and is unused now.
  public var vehicleID: String = String()

  public var geometryFormat: Rideos_Path_V2_PathRequest.GeometryFormat = .none

  public var curbApproach: Rideos_Path_V2_PathRequest.CurbApproach = .unspecified

  /// Deprecated. Use avoid constraints instead.
  public var blacklistConstraintIds: [String] = []

  /// Deprecated. Use operational constraints instead.
  public var whitelistConstraintIds: [String] = []

  /// Optional: the path will avoid traversing these constraints. They take precedence over
  /// operational constraints if both are specified.
  /// If a routing profile is specified, constraints are appended to the routing profile constraints.
  public var avoidConstraintIds: [String] = []

  /// Optional: if provided, this list of identifiers defines an operational domain. The domain consists of the union of all
  /// constraints listed. The path will avoid traversing edges that are not in this operational domain. Avoid constraints
  /// take precedence over operational constraints if both are specified.
  /// If a routing profile is specified, constraints are appended to the routing profile constraints.
  public var operationalConstraintIds: [String] = []

  public var basemapID: String = String()

  /// Optional: Routing profile to use for this request.
  /// New profiles can be added and updated via the Routing Profile API.
  /// If no value is provided, the default profile for motorized vehicles (e.g. cars, motorcycles) is used.
  public var routingProfileID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum GeometryFormat: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Do not return the geometry.
    case none // = 0

    /// Return the geometry as LineString object.
    case linestring // = 1

    /// Return the geometry as Google-style polyline using 5 decimal places.
    case polyline // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .none
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .none
      case 1: self = .linestring
      case 2: self = .polyline
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .none: return 0
      case .linestring: return 1
      case .polyline: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public enum CurbApproach: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// We will not consider the driving direction when snapping the waypoints.
    case unspecified // = 0

    /// We will snap points according to the driving direction of the country.
    case drivingSide // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .drivingSide
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .drivingSide: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _departureTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Rideos_Path_V2_PathRequest.GeometryFormat: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Rideos_Path_V2_PathRequest.GeometryFormat] = [
    .none,
    .linestring,
    .polyline,
  ]
}

extension Rideos_Path_V2_PathRequest.CurbApproach: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Rideos_Path_V2_PathRequest.CurbApproach] = [
    .unspecified,
    .drivingSide,
  ]
}

#endif  // swift(>=4.2)

public struct Rideos_Path_V2_PathResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of waypoints the path passes through.
  public var waypoints: [Rideos_Path_V2_Waypoint] = []

  /// Time of departure from the first waypoint. Will be equal to the request's departure_time if that was set. If not, this
  /// will be equal to the assumed time of departure based on when the request was processed.
  public var departureTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _departureTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_departureTime = newValue}
  }
  /// Returns true if `departureTime` has been explicitly set.
  public var hasDepartureTime: Bool {return self._departureTime != nil}
  /// Clears the value of `departureTime`. Subsequent reads from it will return its default value.
  public mutating func clearDepartureTime() {self._departureTime = nil}

  /// Paths through the waypoints. Will be empty if no path was found.
  public var paths: [Rideos_Path_V2_Path] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _departureTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// Waypoint
public struct Rideos_Path_V2_Waypoint {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Position of the vehicle at the waypoint.
  public var position: Rideos_Geo_V1_Position {
    get {return _position ?? Rideos_Geo_V1_Position()}
    set {_position = newValue}
  }
  /// Returns true if `position` has been explicitly set.
  public var hasPosition: Bool {return self._position != nil}
  /// Clears the value of `position`. Subsequent reads from it will return its default value.
  public mutating func clearPosition() {self._position = nil}

  /// Optional: Heading of the vehicle at the waypoint.
  public var heading: SwiftProtobuf.Google_Protobuf_FloatValue {
    get {return _heading ?? SwiftProtobuf.Google_Protobuf_FloatValue()}
    set {_heading = newValue}
  }
  /// Returns true if `heading` has been explicitly set.
  public var hasHeading: Bool {return self._heading != nil}
  /// Clears the value of `heading`. Subsequent reads from it will return its default value.
  public mutating func clearHeading() {self._heading = nil}

  /// Optional: Define if the path will be split at waypoints or not, default is to split.
  public var type: Rideos_Path_V2_Waypoint.TypeEnum = .stop

  /// Optional: Planned time it will take to go through this waypoint, default is 0 seconds.
  public var serviceTime: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _serviceTime ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_serviceTime = newValue}
  }
  /// Returns true if `serviceTime` has been explicitly set.
  public var hasServiceTime: Bool {return self._serviceTime != nil}
  /// Clears the value of `serviceTime`. Subsequent reads from it will return its default value.
  public mutating func clearServiceTime() {self._serviceTime = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum TypeEnum: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// (Default) Path will be split in a new leg at this waypoint.
    case stop // = 0

    /// Path will be continue as the same leg.
    case passThrough // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .stop
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .stop
      case 1: self = .passThrough
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .stop: return 0
      case .passThrough: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _position: Rideos_Geo_V1_Position? = nil
  fileprivate var _heading: SwiftProtobuf.Google_Protobuf_FloatValue? = nil
  fileprivate var _serviceTime: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

#if swift(>=4.2)

extension Rideos_Path_V2_Waypoint.TypeEnum: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Rideos_Path_V2_Waypoint.TypeEnum] = [
    .stop,
    .passThrough,
  ]
}

#endif  // swift(>=4.2)

public struct Rideos_Path_V2_Leg {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var geometry: Rideos_Path_V2_Leg.OneOf_Geometry? = nil

  /// Geometry for the path encoded as line.
  public var lineString: Rideos_Geo_V1_LineString {
    get {
      if case .lineString(let v)? = geometry {return v}
      return Rideos_Geo_V1_LineString()
    }
    set {geometry = .lineString(newValue)}
  }

  /// Google-encoded polyline representing the geometry.
  /// For details, see https://developers.google.com/maps/documentation/utilities/polylinealgorithm
  public var polyline: String {
    get {
      if case .polyline(let v)? = geometry {return v}
      return String()
    }
    set {geometry = .polyline(newValue)}
  }

  /// Expected length of time required to traverse the leg excluding service times.
  public var travelTime: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _travelTime ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_travelTime = newValue}
  }
  /// Returns true if `travelTime` has been explicitly set.
  public var hasTravelTime: Bool {return self._travelTime != nil}
  /// Clears the value of `travelTime`. Subsequent reads from it will return its default value.
  public mutating func clearTravelTime() {self._travelTime = nil}

  /// Total distance in meters of the Leg
  public var distance: Double = 0

  /// In cases where it is impossible to provide a path without violating any of the excluded_edges in the
  /// request, we will still provide a least-cost path, but this array will contain a list of the XEdgeMatcher
  /// instances that matched any edge in the returned path.
  public var violatedBlacklistConstraintIds: [String] = []

  /// In cases where it is impossible to provide a path without violating the whitelist in the request, we will still
  /// provide a least-cost path, but this flag will be set to true to indicate that the whitelist was violated.
  public var violatedWhitelist: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Geometry: Equatable {
    /// Geometry for the path encoded as line.
    case lineString(Rideos_Geo_V1_LineString)
    /// Google-encoded polyline representing the geometry.
    /// For details, see https://developers.google.com/maps/documentation/utilities/polylinealgorithm
    case polyline(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Rideos_Path_V2_Leg.OneOf_Geometry, rhs: Rideos_Path_V2_Leg.OneOf_Geometry) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.lineString, .lineString): return {
        guard case .lineString(let l) = lhs, case .lineString(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.polyline, .polyline): return {
        guard case .polyline(let l) = lhs, case .polyline(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _travelTime: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

public struct Rideos_Path_V2_Path {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Path split into legs at each stopping waypoint.
  public var legs: [Rideos_Path_V2_Leg] = []

  /// Expected length of time required to traverse the Path including service times.
  public var travelTime: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _travelTime ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_travelTime = newValue}
  }
  /// Returns true if `travelTime` has been explicitly set.
  public var hasTravelTime: Bool {return self._travelTime != nil}
  /// Clears the value of `travelTime`. Subsequent reads from it will return its default value.
  public mutating func clearTravelTime() {self._travelTime = nil}

  /// Total distance in meters of the Path (i.e. the sum of the distances of each Leg).
  public var distance: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _travelTime: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "rideos.path.v2"

extension Rideos_Path_V2_PathRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PathRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "waypoints"),
    2: .standard(proto: "departure_time"),
    1003: .standard(proto: "excluded_edges"),
    4: .standard(proto: "vehicle_id"),
    5: .standard(proto: "geometry_format"),
    6: .standard(proto: "curb_approach"),
    10: .standard(proto: "blacklist_constraint_ids"),
    11: .standard(proto: "whitelist_constraint_ids"),
    12: .standard(proto: "avoid_constraint_ids"),
    13: .standard(proto: "operational_constraint_ids"),
    7: .standard(proto: "basemap_id"),
    1004: .standard(proto: "routing_profile_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.waypoints) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._departureTime) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.vehicleID) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.geometryFormat) }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.curbApproach) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.basemapID) }()
      case 10: try { try decoder.decodeRepeatedStringField(value: &self.blacklistConstraintIds) }()
      case 11: try { try decoder.decodeRepeatedStringField(value: &self.whitelistConstraintIds) }()
      case 12: try { try decoder.decodeRepeatedStringField(value: &self.avoidConstraintIds) }()
      case 13: try { try decoder.decodeRepeatedStringField(value: &self.operationalConstraintIds) }()
      case 1003: try { try decoder.decodeRepeatedMessageField(value: &self.excludedEdges) }()
      case 1004: try { try decoder.decodeSingularStringField(value: &self.routingProfileID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.waypoints.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.waypoints, fieldNumber: 1)
    }
    if let v = self._departureTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.vehicleID.isEmpty {
      try visitor.visitSingularStringField(value: self.vehicleID, fieldNumber: 4)
    }
    if self.geometryFormat != .none {
      try visitor.visitSingularEnumField(value: self.geometryFormat, fieldNumber: 5)
    }
    if self.curbApproach != .unspecified {
      try visitor.visitSingularEnumField(value: self.curbApproach, fieldNumber: 6)
    }
    if !self.basemapID.isEmpty {
      try visitor.visitSingularStringField(value: self.basemapID, fieldNumber: 7)
    }
    if !self.blacklistConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.blacklistConstraintIds, fieldNumber: 10)
    }
    if !self.whitelistConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.whitelistConstraintIds, fieldNumber: 11)
    }
    if !self.avoidConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.avoidConstraintIds, fieldNumber: 12)
    }
    if !self.operationalConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.operationalConstraintIds, fieldNumber: 13)
    }
    if !self.excludedEdges.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.excludedEdges, fieldNumber: 1003)
    }
    if !self.routingProfileID.isEmpty {
      try visitor.visitSingularStringField(value: self.routingProfileID, fieldNumber: 1004)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Path_V2_PathRequest, rhs: Rideos_Path_V2_PathRequest) -> Bool {
    if lhs.waypoints != rhs.waypoints {return false}
    if lhs._departureTime != rhs._departureTime {return false}
    if lhs.excludedEdges != rhs.excludedEdges {return false}
    if lhs.vehicleID != rhs.vehicleID {return false}
    if lhs.geometryFormat != rhs.geometryFormat {return false}
    if lhs.curbApproach != rhs.curbApproach {return false}
    if lhs.blacklistConstraintIds != rhs.blacklistConstraintIds {return false}
    if lhs.whitelistConstraintIds != rhs.whitelistConstraintIds {return false}
    if lhs.avoidConstraintIds != rhs.avoidConstraintIds {return false}
    if lhs.operationalConstraintIds != rhs.operationalConstraintIds {return false}
    if lhs.basemapID != rhs.basemapID {return false}
    if lhs.routingProfileID != rhs.routingProfileID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Path_V2_PathRequest.GeometryFormat: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NONE"),
    1: .same(proto: "LINESTRING"),
    2: .same(proto: "POLYLINE"),
  ]
}

extension Rideos_Path_V2_PathRequest.CurbApproach: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED"),
    1: .same(proto: "DRIVING_SIDE"),
  ]
}

extension Rideos_Path_V2_PathResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PathResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "waypoints"),
    2: .standard(proto: "departure_time"),
    3: .same(proto: "paths"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.waypoints) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._departureTime) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.paths) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.waypoints.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.waypoints, fieldNumber: 1)
    }
    if let v = self._departureTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.paths.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.paths, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Path_V2_PathResponse, rhs: Rideos_Path_V2_PathResponse) -> Bool {
    if lhs.waypoints != rhs.waypoints {return false}
    if lhs._departureTime != rhs._departureTime {return false}
    if lhs.paths != rhs.paths {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Path_V2_Waypoint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Waypoint"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "position"),
    2: .same(proto: "heading"),
    3: .same(proto: "type"),
    4: .standard(proto: "service_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._position) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._heading) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._serviceTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._position {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._heading {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.type != .stop {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 3)
    }
    if let v = self._serviceTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Path_V2_Waypoint, rhs: Rideos_Path_V2_Waypoint) -> Bool {
    if lhs._position != rhs._position {return false}
    if lhs._heading != rhs._heading {return false}
    if lhs.type != rhs.type {return false}
    if lhs._serviceTime != rhs._serviceTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Path_V2_Waypoint.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STOP"),
    1: .same(proto: "PASS_THROUGH"),
  ]
}

extension Rideos_Path_V2_Leg: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Leg"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "line_string"),
    2: .same(proto: "polyline"),
    3: .standard(proto: "travel_time"),
    5: .same(proto: "distance"),
    6: .standard(proto: "violated_blacklist_constraint_ids"),
    7: .standard(proto: "violated_whitelist"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Rideos_Geo_V1_LineString?
        if let current = self.geometry {
          try decoder.handleConflictingOneOf()
          if case .lineString(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.geometry = .lineString(v)}
      }()
      case 2: try {
        if self.geometry != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.geometry = .polyline(v)}
      }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._travelTime) }()
      case 5: try { try decoder.decodeSingularDoubleField(value: &self.distance) }()
      case 6: try { try decoder.decodeRepeatedStringField(value: &self.violatedBlacklistConstraintIds) }()
      case 7: try { try decoder.decodeSingularBoolField(value: &self.violatedWhitelist) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.geometry {
    case .lineString?: try {
      guard case .lineString(let v)? = self.geometry else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .polyline?: try {
      guard case .polyline(let v)? = self.geometry else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    if let v = self._travelTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if self.distance != 0 {
      try visitor.visitSingularDoubleField(value: self.distance, fieldNumber: 5)
    }
    if !self.violatedBlacklistConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.violatedBlacklistConstraintIds, fieldNumber: 6)
    }
    if self.violatedWhitelist != false {
      try visitor.visitSingularBoolField(value: self.violatedWhitelist, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Path_V2_Leg, rhs: Rideos_Path_V2_Leg) -> Bool {
    if lhs.geometry != rhs.geometry {return false}
    if lhs._travelTime != rhs._travelTime {return false}
    if lhs.distance != rhs.distance {return false}
    if lhs.violatedBlacklistConstraintIds != rhs.violatedBlacklistConstraintIds {return false}
    if lhs.violatedWhitelist != rhs.violatedWhitelist {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Path_V2_Path: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Path"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "legs"),
    2: .standard(proto: "travel_time"),
    3: .same(proto: "distance"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.legs) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._travelTime) }()
      case 3: try { try decoder.decodeSingularDoubleField(value: &self.distance) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.legs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.legs, fieldNumber: 1)
    }
    if let v = self._travelTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.distance != 0 {
      try visitor.visitSingularDoubleField(value: self.distance, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Path_V2_Path, rhs: Rideos_Path_V2_Path) -> Bool {
    if lhs.legs != rhs.legs {return false}
    if lhs._travelTime != rhs._travelTime {return false}
    if lhs.distance != rhs.distance {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}