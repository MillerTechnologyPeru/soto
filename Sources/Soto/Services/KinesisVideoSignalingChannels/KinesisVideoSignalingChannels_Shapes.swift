//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import Foundation
import SotoCore

extension KinesisVideoSignalingChannels {
    // MARK: Enums

    public enum Service: String, CustomStringConvertible, Codable {
        case turn = "TURN"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct GetIceServerConfigRequest: AWSEncodableShape {
        /// The ARN of the signaling channel to be used for the peer-to-peer connection between configured peers.
        public let channelARN: String
        /// Unique identifier for the viewer. Must be unique within the signaling channel.
        public let clientId: String?
        /// Specifies the desired service. Currently, TURN is the only valid value.
        public let service: Service?
        /// An optional user ID to be associated with the credentials.
        public let username: String?

        public init(channelARN: String, clientId: String? = nil, service: Service? = nil, username: String? = nil) {
            self.channelARN = channelARN
            self.clientId = clientId
            self.service = service
            self.username = username
        }

        public func validate(name: String) throws {
            try self.validate(self.channelARN, name: "channelARN", parent: name, max: 1024)
            try self.validate(self.channelARN, name: "channelARN", parent: name, min: 1)
            try self.validate(self.channelARN, name: "channelARN", parent: name, pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
            try self.validate(self.clientId, name: "clientId", parent: name, max: 256)
            try self.validate(self.clientId, name: "clientId", parent: name, min: 1)
            try self.validate(self.clientId, name: "clientId", parent: name, pattern: "[a-zA-Z0-9_.-]+")
            try self.validate(self.username, name: "username", parent: name, max: 256)
            try self.validate(self.username, name: "username", parent: name, min: 1)
            try self.validate(self.username, name: "username", parent: name, pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case channelARN = "ChannelARN"
            case clientId = "ClientId"
            case service = "Service"
            case username = "Username"
        }
    }

    public struct GetIceServerConfigResponse: AWSDecodableShape {
        /// The list of ICE server information objects.
        public let iceServerList: [IceServer]?

        public init(iceServerList: [IceServer]? = nil) {
            self.iceServerList = iceServerList
        }

        private enum CodingKeys: String, CodingKey {
            case iceServerList = "IceServerList"
        }
    }

    public struct IceServer: AWSDecodableShape {
        /// A password to login to the ICE server.
        public let password: String?
        /// The period of time, in seconds, during which the username and password are valid.
        public let ttl: Int?
        /// An array of URIs, in the form specified in the I-D.petithuguenin-behave-turn-uris spec. These URIs provide the different addresses and/or protocols that can be used to reach the TURN server.
        public let uris: [String]?
        /// A username to login to the ICE server.
        public let username: String?

        public init(password: String? = nil, ttl: Int? = nil, uris: [String]? = nil, username: String? = nil) {
            self.password = password
            self.ttl = ttl
            self.uris = uris
            self.username = username
        }

        private enum CodingKeys: String, CodingKey {
            case password = "Password"
            case ttl = "Ttl"
            case uris = "Uris"
            case username = "Username"
        }
    }

    public struct SendAlexaOfferToMasterRequest: AWSEncodableShape {
        /// The ARN of the signaling channel by which Alexa and the master peer communicate.
        public let channelARN: String
        /// The base64-encoded SDP offer content.
        public let messagePayload: String
        /// The unique identifier for the sender client.
        public let senderClientId: String

        public init(channelARN: String, messagePayload: String, senderClientId: String) {
            self.channelARN = channelARN
            self.messagePayload = messagePayload
            self.senderClientId = senderClientId
        }

        public func validate(name: String) throws {
            try self.validate(self.channelARN, name: "channelARN", parent: name, max: 1024)
            try self.validate(self.channelARN, name: "channelARN", parent: name, min: 1)
            try self.validate(self.channelARN, name: "channelARN", parent: name, pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
            try self.validate(self.messagePayload, name: "messagePayload", parent: name, max: 10000)
            try self.validate(self.messagePayload, name: "messagePayload", parent: name, min: 1)
            try self.validate(self.messagePayload, name: "messagePayload", parent: name, pattern: "[a-zA-Z0-9+/=]+")
            try self.validate(self.senderClientId, name: "senderClientId", parent: name, max: 256)
            try self.validate(self.senderClientId, name: "senderClientId", parent: name, min: 1)
            try self.validate(self.senderClientId, name: "senderClientId", parent: name, pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case channelARN = "ChannelARN"
            case messagePayload = "MessagePayload"
            case senderClientId = "SenderClientId"
        }
    }

    public struct SendAlexaOfferToMasterResponse: AWSDecodableShape {
        /// The base64-encoded SDP answer content.
        public let answer: String?

        public init(answer: String? = nil) {
            self.answer = answer
        }

        private enum CodingKeys: String, CodingKey {
            case answer = "Answer"
        }
    }
}
