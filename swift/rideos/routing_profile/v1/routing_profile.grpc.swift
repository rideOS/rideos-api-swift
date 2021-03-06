//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: rideos/routing_profile/v1/routing_profile.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
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
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate Rideos_RoutingProfile_V1_RoutingProfileServiceClient, then call methods of this protocol to make API calls.
public protocol Rideos_RoutingProfile_V1_RoutingProfileServiceClientProtocol: GRPCClient {
  func addOrReplaceRoutingProfile(
    _ request: Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileRequest, Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileResponse>

  func getRoutingProfile(
    _ request: Rideos_RoutingProfile_V1_GetRoutingProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_RoutingProfile_V1_GetRoutingProfileRequest, Rideos_RoutingProfile_V1_GetRoutingProfileResponse>

  func appendConstraintsToRoutingProfile(
    _ request: Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileRequest, Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileResponse>

  func removeConstraintFromRoutingProfile(
    _ request: Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileRequest, Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileResponse>

}

extension Rideos_RoutingProfile_V1_RoutingProfileServiceClientProtocol {

  /// Add or replace a routing profile
  ///
  /// Adds a new routing profile with a given partner-defined identifier. If a routing profile with the same name exists, it will get overwritten.
  /// The identifier of the routing profile can be referenced in the Path API and ETA API to change the routing behavior.
  /// Changes to routing profiles can take some time until they are reflected in all APIs consistently due to caching.
  ///
  /// - Parameters:
  ///   - request: Request to send to AddOrReplaceRoutingProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func addOrReplaceRoutingProfile(
    _ request: Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileRequest, Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileResponse> {
    return self.makeUnaryCall(
      path: "/rideos.routing_profile.v1.RoutingProfileService/AddOrReplaceRoutingProfile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Retrieve the content of a routing profile
  ///
  /// This method returns all partner-configurable properties of a routing profile.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRoutingProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRoutingProfile(
    _ request: Rideos_RoutingProfile_V1_GetRoutingProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_RoutingProfile_V1_GetRoutingProfileRequest, Rideos_RoutingProfile_V1_GetRoutingProfileResponse> {
    return self.makeUnaryCall(
      path: "/rideos.routing_profile.v1.RoutingProfileService/GetRoutingProfile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Append constraints to a routing profile
  ///
  /// This method appends constraints to an existing routing profile. This is useful when you do not want to update the whole profile,
  /// but just want to add individual constraints.
  ///
  /// - Parameters:
  ///   - request: Request to send to AppendConstraintsToRoutingProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func appendConstraintsToRoutingProfile(
    _ request: Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileRequest, Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileResponse> {
    return self.makeUnaryCall(
      path: "/rideos.routing_profile.v1.RoutingProfileService/AppendConstraintsToRoutingProfile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Remove constraints from a routing profile
  ///
  /// This method removes constraint from an existing routing profile. This is useful when you do not want to update the whole profile,
  /// but just want to remove individual constraints.
  ///
  /// - Parameters:
  ///   - request: Request to send to RemoveConstraintFromRoutingProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func removeConstraintFromRoutingProfile(
    _ request: Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileRequest, Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileResponse> {
    return self.makeUnaryCall(
      path: "/rideos.routing_profile.v1.RoutingProfileService/RemoveConstraintFromRoutingProfile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Rideos_RoutingProfile_V1_RoutingProfileServiceClient: Rideos_RoutingProfile_V1_RoutingProfileServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the rideos.routing_profile.v1.RoutingProfileService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

