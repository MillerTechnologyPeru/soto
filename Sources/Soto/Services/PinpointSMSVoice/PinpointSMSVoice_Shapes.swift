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

extension PinpointSMSVoice {
    // MARK: Enums

    public enum EventType: String, CustomStringConvertible, Codable {
        case answered = "ANSWERED"
        case busy = "BUSY"
        case completedCall = "COMPLETED_CALL"
        case failed = "FAILED"
        case initiatedCall = "INITIATED_CALL"
        case noAnswer = "NO_ANSWER"
        case ringing = "RINGING"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CallInstructionsMessageType: AWSEncodableShape {
        /// The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
        public let text: String?

        public init(text: String? = nil) {
            self.text = text
        }

        private enum CodingKeys: String, CodingKey {
            case text = "Text"
        }
    }

    public struct CloudWatchLogsDestination: AWSEncodableShape & AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of an Amazon Identity and Access Management (IAM) role that is able to write event data to an Amazon CloudWatch destination.
        public let iamRoleArn: String?
        /// The name of the Amazon CloudWatch Log Group that you want to record events in.
        public let logGroupArn: String?

        public init(iamRoleArn: String? = nil, logGroupArn: String? = nil) {
            self.iamRoleArn = iamRoleArn
            self.logGroupArn = logGroupArn
        }

        private enum CodingKeys: String, CodingKey {
            case iamRoleArn = "IamRoleArn"
            case logGroupArn = "LogGroupArn"
        }
    }

    public struct CreateConfigurationSetEventDestinationRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "configurationSetName", location: .uri(locationName: "ConfigurationSetName"))
        ]

        public let configurationSetName: String
        public let eventDestination: EventDestinationDefinition?
        /// A name that identifies the event destination.
        public let eventDestinationName: String?

        public init(configurationSetName: String, eventDestination: EventDestinationDefinition? = nil, eventDestinationName: String? = nil) {
            self.configurationSetName = configurationSetName
            self.eventDestination = eventDestination
            self.eventDestinationName = eventDestinationName
        }

        private enum CodingKeys: String, CodingKey {
            case eventDestination = "EventDestination"
            case eventDestinationName = "EventDestinationName"
        }
    }

    public struct CreateConfigurationSetEventDestinationResponse: AWSDecodableShape {
        public init() {}
    }

    public struct CreateConfigurationSetRequest: AWSEncodableShape {
        /// The name that you want to give the configuration set.
        public let configurationSetName: String?

        public init(configurationSetName: String? = nil) {
            self.configurationSetName = configurationSetName
        }

        private enum CodingKeys: String, CodingKey {
            case configurationSetName = "ConfigurationSetName"
        }
    }

    public struct CreateConfigurationSetResponse: AWSDecodableShape {
        public init() {}
    }

    public struct DeleteConfigurationSetEventDestinationRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "configurationSetName", location: .uri(locationName: "ConfigurationSetName")),
            AWSMemberEncoding(label: "eventDestinationName", location: .uri(locationName: "EventDestinationName"))
        ]

        public let configurationSetName: String
        public let eventDestinationName: String

        public init(configurationSetName: String, eventDestinationName: String) {
            self.configurationSetName = configurationSetName
            self.eventDestinationName = eventDestinationName
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteConfigurationSetEventDestinationResponse: AWSDecodableShape {
        public init() {}
    }

    public struct DeleteConfigurationSetRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "configurationSetName", location: .uri(locationName: "ConfigurationSetName"))
        ]

        public let configurationSetName: String

        public init(configurationSetName: String) {
            self.configurationSetName = configurationSetName
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteConfigurationSetResponse: AWSDecodableShape {
        public init() {}
    }

    public struct EventDestination: AWSDecodableShape {
        public let cloudWatchLogsDestination: CloudWatchLogsDestination?
        /// Indicates whether or not the event destination is enabled. If the event destination is enabled, then Amazon Pinpoint sends response data to the specified event destination.
        public let enabled: Bool?
        public let kinesisFirehoseDestination: KinesisFirehoseDestination?
        public let matchingEventTypes: [EventType]?
        /// A name that identifies the event destination configuration.
        public let name: String?
        public let snsDestination: SnsDestination?

        public init(cloudWatchLogsDestination: CloudWatchLogsDestination? = nil, enabled: Bool? = nil, kinesisFirehoseDestination: KinesisFirehoseDestination? = nil, matchingEventTypes: [EventType]? = nil, name: String? = nil, snsDestination: SnsDestination? = nil) {
            self.cloudWatchLogsDestination = cloudWatchLogsDestination
            self.enabled = enabled
            self.kinesisFirehoseDestination = kinesisFirehoseDestination
            self.matchingEventTypes = matchingEventTypes
            self.name = name
            self.snsDestination = snsDestination
        }

        private enum CodingKeys: String, CodingKey {
            case cloudWatchLogsDestination = "CloudWatchLogsDestination"
            case enabled = "Enabled"
            case kinesisFirehoseDestination = "KinesisFirehoseDestination"
            case matchingEventTypes = "MatchingEventTypes"
            case name = "Name"
            case snsDestination = "SnsDestination"
        }
    }

    public struct EventDestinationDefinition: AWSEncodableShape {
        public let cloudWatchLogsDestination: CloudWatchLogsDestination?
        /// Indicates whether or not the event destination is enabled. If the event destination is enabled, then Amazon Pinpoint sends response data to the specified event destination.
        public let enabled: Bool?
        public let kinesisFirehoseDestination: KinesisFirehoseDestination?
        public let matchingEventTypes: [EventType]?
        public let snsDestination: SnsDestination?

        public init(cloudWatchLogsDestination: CloudWatchLogsDestination? = nil, enabled: Bool? = nil, kinesisFirehoseDestination: KinesisFirehoseDestination? = nil, matchingEventTypes: [EventType]? = nil, snsDestination: SnsDestination? = nil) {
            self.cloudWatchLogsDestination = cloudWatchLogsDestination
            self.enabled = enabled
            self.kinesisFirehoseDestination = kinesisFirehoseDestination
            self.matchingEventTypes = matchingEventTypes
            self.snsDestination = snsDestination
        }

        private enum CodingKeys: String, CodingKey {
            case cloudWatchLogsDestination = "CloudWatchLogsDestination"
            case enabled = "Enabled"
            case kinesisFirehoseDestination = "KinesisFirehoseDestination"
            case matchingEventTypes = "MatchingEventTypes"
            case snsDestination = "SnsDestination"
        }
    }

    public struct GetConfigurationSetEventDestinationsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "configurationSetName", location: .uri(locationName: "ConfigurationSetName"))
        ]

        public let configurationSetName: String

        public init(configurationSetName: String) {
            self.configurationSetName = configurationSetName
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetConfigurationSetEventDestinationsResponse: AWSDecodableShape {
        public let eventDestinations: [EventDestination]?

        public init(eventDestinations: [EventDestination]? = nil) {
            self.eventDestinations = eventDestinations
        }

        private enum CodingKeys: String, CodingKey {
            case eventDestinations = "EventDestinations"
        }
    }

    public struct KinesisFirehoseDestination: AWSEncodableShape & AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of an IAM role that can write data to an Amazon Kinesis Data Firehose stream.
        public let deliveryStreamArn: String?
        /// The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose destination that you want to use in the event destination.
        public let iamRoleArn: String?

        public init(deliveryStreamArn: String? = nil, iamRoleArn: String? = nil) {
            self.deliveryStreamArn = deliveryStreamArn
            self.iamRoleArn = iamRoleArn
        }

        private enum CodingKeys: String, CodingKey {
            case deliveryStreamArn = "DeliveryStreamArn"
            case iamRoleArn = "IamRoleArn"
        }
    }

    public struct ListConfigurationSetsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "NextToken")),
            AWSMemberEncoding(label: "pageSize", location: .querystring(locationName: "PageSize"))
        ]

        public let nextToken: String?
        public let pageSize: String?

        public init(nextToken: String? = nil, pageSize: String? = nil) {
            self.nextToken = nextToken
            self.pageSize = pageSize
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListConfigurationSetsResponse: AWSDecodableShape {
        /// An object that contains a list of configuration sets for your account in the current region.
        public let configurationSets: [String]?
        /// A token returned from a previous call to ListConfigurationSets to indicate the position in the list of configuration sets.
        public let nextToken: String?

        public init(configurationSets: [String]? = nil, nextToken: String? = nil) {
            self.configurationSets = configurationSets
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case configurationSets = "ConfigurationSets"
            case nextToken = "NextToken"
        }
    }

    public struct PlainTextMessageType: AWSEncodableShape {
        /// The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
        public let languageCode: String?
        /// The plain (not SSML-formatted) text to deliver to the recipient.
        public let text: String?
        /// The name of the voice that you want to use to deliver the message. For a complete list of supported voices, see the Amazon Polly Developer Guide.
        public let voiceId: String?

        public init(languageCode: String? = nil, text: String? = nil, voiceId: String? = nil) {
            self.languageCode = languageCode
            self.text = text
            self.voiceId = voiceId
        }

        private enum CodingKeys: String, CodingKey {
            case languageCode = "LanguageCode"
            case text = "Text"
            case voiceId = "VoiceId"
        }
    }

    public struct SSMLMessageType: AWSEncodableShape {
        /// The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
        public let languageCode: String?
        /// The SSML-formatted text to deliver to the recipient.
        public let text: String?
        /// The name of the voice that you want to use to deliver the message. For a complete list of supported voices, see the Amazon Polly Developer Guide.
        public let voiceId: String?

        public init(languageCode: String? = nil, text: String? = nil, voiceId: String? = nil) {
            self.languageCode = languageCode
            self.text = text
            self.voiceId = voiceId
        }

        private enum CodingKeys: String, CodingKey {
            case languageCode = "LanguageCode"
            case text = "Text"
            case voiceId = "VoiceId"
        }
    }

    public struct SendVoiceMessageRequest: AWSEncodableShape {
        /// The phone number that appears on recipients' devices when they receive the message.
        public let callerId: String?
        /// The name of the configuration set that you want to use to send the message.
        public let configurationSetName: String?
        public let content: VoiceMessageContent?
        /// The phone number that you want to send the voice message to.
        public let destinationPhoneNumber: String?
        /// The phone number that Amazon Pinpoint should use to send the voice message. This isn't necessarily the phone number that appears on recipients' devices when they receive the message, because you can specify a CallerId parameter in the request.
        public let originationPhoneNumber: String?

        public init(callerId: String? = nil, configurationSetName: String? = nil, content: VoiceMessageContent? = nil, destinationPhoneNumber: String? = nil, originationPhoneNumber: String? = nil) {
            self.callerId = callerId
            self.configurationSetName = configurationSetName
            self.content = content
            self.destinationPhoneNumber = destinationPhoneNumber
            self.originationPhoneNumber = originationPhoneNumber
        }

        private enum CodingKeys: String, CodingKey {
            case callerId = "CallerId"
            case configurationSetName = "ConfigurationSetName"
            case content = "Content"
            case destinationPhoneNumber = "DestinationPhoneNumber"
            case originationPhoneNumber = "OriginationPhoneNumber"
        }
    }

    public struct SendVoiceMessageResponse: AWSDecodableShape {
        /// A unique identifier for the voice message.
        public let messageId: String?

        public init(messageId: String? = nil) {
            self.messageId = messageId
        }

        private enum CodingKeys: String, CodingKey {
            case messageId = "MessageId"
        }
    }

    public struct SnsDestination: AWSEncodableShape & AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to publish events to.
        public let topicArn: String?

        public init(topicArn: String? = nil) {
            self.topicArn = topicArn
        }

        private enum CodingKeys: String, CodingKey {
            case topicArn = "TopicArn"
        }
    }

    public struct UpdateConfigurationSetEventDestinationRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "configurationSetName", location: .uri(locationName: "ConfigurationSetName")),
            AWSMemberEncoding(label: "eventDestinationName", location: .uri(locationName: "EventDestinationName"))
        ]

        public let configurationSetName: String
        public let eventDestination: EventDestinationDefinition?
        public let eventDestinationName: String

        public init(configurationSetName: String, eventDestination: EventDestinationDefinition? = nil, eventDestinationName: String) {
            self.configurationSetName = configurationSetName
            self.eventDestination = eventDestination
            self.eventDestinationName = eventDestinationName
        }

        private enum CodingKeys: String, CodingKey {
            case eventDestination = "EventDestination"
        }
    }

    public struct UpdateConfigurationSetEventDestinationResponse: AWSDecodableShape {
        public init() {}
    }

    public struct VoiceMessageContent: AWSEncodableShape {
        public let callInstructionsMessage: CallInstructionsMessageType?
        public let plainTextMessage: PlainTextMessageType?
        public let sSMLMessage: SSMLMessageType?

        public init(callInstructionsMessage: CallInstructionsMessageType? = nil, plainTextMessage: PlainTextMessageType? = nil, sSMLMessage: SSMLMessageType? = nil) {
            self.callInstructionsMessage = callInstructionsMessage
            self.plainTextMessage = plainTextMessage
            self.sSMLMessage = sSMLMessage
        }

        private enum CodingKeys: String, CodingKey {
            case callInstructionsMessage = "CallInstructionsMessage"
            case plainTextMessage = "PlainTextMessage"
            case sSMLMessage = "SSMLMessage"
        }
    }
}
