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

extension WorkMailMessageFlow {
    // MARK: Enums

    // MARK: Shapes

    public struct GetRawMessageContentRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "messageId", location: .uri(locationName: "messageId"))
        ]

        /// The identifier of the email message to retrieve.
        public let messageId: String

        public init(messageId: String) {
            self.messageId = messageId
        }

        public func validate(name: String) throws {
            try self.validate(self.messageId, name: "messageId", parent: name, max: 120)
            try self.validate(self.messageId, name: "messageId", parent: name, min: 1)
            try self.validate(self.messageId, name: "messageId", parent: name, pattern: "[a-z0-9\\-]*")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetRawMessageContentResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "messageContent"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw, .allowStreaming]

        /// The raw content of the email message, in MIME format.
        public let messageContent: AWSPayload

        public init(messageContent: AWSPayload) {
            self.messageContent = messageContent
        }

        private enum CodingKeys: String, CodingKey {
            case messageContent
        }
    }
}
