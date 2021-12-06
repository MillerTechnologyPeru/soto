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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Waiters

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Neptune {
    public func waitUntilDBInstanceAvailable(
        _ input: DescribeDBInstancesMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("dbInstances[].dBInstanceStatus", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dbInstances[].dBInstanceStatus", expected: "deleted")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dbInstances[].dBInstanceStatus", expected: "deleting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dbInstances[].dBInstanceStatus", expected: "failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dbInstances[].dBInstanceStatus", expected: "incompatible-restore")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dbInstances[].dBInstanceStatus", expected: "incompatible-parameters")),
            ],
            minDelayTime: .seconds(30),
            command: describeDBInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilDBInstanceDeleted(
        _ input: DescribeDBInstancesMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("dbInstances[].dBInstanceStatus", expected: "deleted")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("DBInstanceNotFound")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dbInstances[].dBInstanceStatus", expected: "creating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dbInstances[].dBInstanceStatus", expected: "modifying")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dbInstances[].dBInstanceStatus", expected: "rebooting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dbInstances[].dBInstanceStatus", expected: "resetting-master-credentials")),
            ],
            minDelayTime: .seconds(30),
            command: describeDBInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
