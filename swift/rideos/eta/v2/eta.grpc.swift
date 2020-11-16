//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: rideos/eta/v2/eta.proto
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


/// Usage: instantiate Rideos_Eta_V2_EtaServiceClient, then call methods of this protocol to make API calls.
public protocol Rideos_Eta_V2_EtaServiceClientProtocol: GRPCClient {
  func getEta(
    _ request: Rideos_Eta_V2_EtaRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_Eta_V2_EtaRequest, Rideos_Eta_V2_EtaResponse>

}

extension Rideos_Eta_V2_EtaServiceClientProtocol {

  /// Retrieve ETA from origins to destinations
  ///
  /// - Parameters:
  ///   - request: Request to send to GetEta.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getEta(
    _ request: Rideos_Eta_V2_EtaRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_Eta_V2_EtaRequest, Rideos_Eta_V2_EtaResponse> {
    return self.makeUnaryCall(
      path: "/rideos.eta.v2.EtaService/GetEta",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Rideos_Eta_V2_EtaServiceClient: Rideos_Eta_V2_EtaServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the rideos.eta.v2.EtaService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}
