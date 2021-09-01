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

@_exported import SotoCore

import SotoCore

// MARK: Waiters

extension SSMIncidents {
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilWaitForReplicationSetActive(
        _ input: GetReplicationSetInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("replicationSet.status", expected: "ACTIVE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("replicationSet.status", expected: "CREATING")),
                .init(state: .retry, matcher: try! JMESPathMatcher("replicationSet.status", expected: "UPDATING")),
                .init(state: .failure, matcher: try! JMESPathMatcher("replicationSet.status", expected: "FAILED")),
            ],
            minDelayTime: .seconds(30),
            command: getReplicationSet
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilWaitForReplicationSetDeleted(
        _ input: GetReplicationSetInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
                .init(state: .retry, matcher: try! JMESPathMatcher("replicationSet.status", expected: "DELETING")),
                .init(state: .failure, matcher: try! JMESPathMatcher("replicationSet.status", expected: "FAILED")),
            ],
            minDelayTime: .seconds(30),
            command: getReplicationSet
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}