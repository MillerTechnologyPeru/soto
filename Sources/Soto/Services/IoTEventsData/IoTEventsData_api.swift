//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS IoTEventsData service.
///
/// IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. You can use IoT Events Data API commands to send inputs to detectors, list detectors, and view or update a detector's status. For more information, see What is IoT Events? in the IoT Events Developer Guide.
public struct IoTEventsData: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IoTEventsData client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "data.iotevents",
            signingName: "ioteventsdata",
            serviceProtocol: .restjson,
            apiVersion: "2018-10-23",
            endpoint: endpoint,
            errorType: IoTEventsDataErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Acknowledges one or more alarms. The alarms change to the ACKNOWLEDGED state after you acknowledge them.
    public func batchAcknowledgeAlarm(_ input: BatchAcknowledgeAlarmRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchAcknowledgeAlarmResponse> {
        return self.client.execute(operation: "BatchAcknowledgeAlarm", path: "/alarms/acknowledge", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes one or more detectors that were created. When a detector is deleted, its state will be cleared and the detector will be removed from the list of detectors. The deleted detector will no longer appear if referenced in the ListDetectors API call.
    public func batchDeleteDetector(_ input: BatchDeleteDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteDetectorResponse> {
        return self.client.execute(operation: "BatchDeleteDetector", path: "/detectors/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables one or more alarms. The alarms change to the DISABLED state after you disable them.
    public func batchDisableAlarm(_ input: BatchDisableAlarmRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDisableAlarmResponse> {
        return self.client.execute(operation: "BatchDisableAlarm", path: "/alarms/disable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables one or more alarms. The alarms change to the NORMAL state after you enable them.
    public func batchEnableAlarm(_ input: BatchEnableAlarmRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchEnableAlarmResponse> {
        return self.client.execute(operation: "BatchEnableAlarm", path: "/alarms/enable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends a set of messages to the IoT Events system. Each message payload is transformed into the input you specify ("inputName") and ingested into any detectors that monitor that input. If multiple messages are sent, the order in which the messages are processed isn't guaranteed. To guarantee ordering, you must send messages one at a time and wait for a successful response.
    public func batchPutMessage(_ input: BatchPutMessageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchPutMessageResponse> {
        return self.client.execute(operation: "BatchPutMessage", path: "/inputs/messages", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Resets one or more alarms. The alarms return to the NORMAL state after you reset them.
    public func batchResetAlarm(_ input: BatchResetAlarmRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchResetAlarmResponse> {
        return self.client.execute(operation: "BatchResetAlarm", path: "/alarms/reset", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes one or more alarms to the snooze mode. The alarms change to the SNOOZE_DISABLED state after you set them to the snooze mode.
    public func batchSnoozeAlarm(_ input: BatchSnoozeAlarmRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchSnoozeAlarmResponse> {
        return self.client.execute(operation: "BatchSnoozeAlarm", path: "/alarms/snooze", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the state, variable values, and timer settings of one or more detectors (instances) of a specified detector model.
    public func batchUpdateDetector(_ input: BatchUpdateDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchUpdateDetectorResponse> {
        return self.client.execute(operation: "BatchUpdateDetector", path: "/detectors", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about an alarm.
    public func describeAlarm(_ input: DescribeAlarmRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmResponse> {
        return self.client.execute(operation: "DescribeAlarm", path: "/alarms/{alarmModelName}/keyValues", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the specified detector (instance).
    public func describeDetector(_ input: DescribeDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDetectorResponse> {
        return self.client.execute(operation: "DescribeDetector", path: "/detectors/{detectorModelName}/keyValues", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists one or more alarms. The operation returns only the metadata associated with each alarm.
    public func listAlarms(_ input: ListAlarmsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAlarmsResponse> {
        return self.client.execute(operation: "ListAlarms", path: "/alarms/{alarmModelName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists detectors (the instances of a detector model).
    public func listDetectors(_ input: ListDetectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDetectorsResponse> {
        return self.client.execute(operation: "ListDetectors", path: "/detectors/{detectorModelName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension IoTEventsData {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IoTEventsData, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}