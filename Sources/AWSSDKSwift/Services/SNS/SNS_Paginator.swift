//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

//MARK: Paginators

extension SNS {

    ///  Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as FCM and APNS. The results for ListEndpointsByPlatformApplication are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call ListEndpointsByPlatformApplication again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see Using Amazon SNS Mobile Push Notifications.  This action is throttled at 30 transactions per second (TPS).
    public func listEndpointsByPlatformApplicationPaginator(
        _ input: ListEndpointsByPlatformApplicationInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListEndpointsByPlatformApplicationResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listEndpointsByPlatformApplication, tokenKey: \ListEndpointsByPlatformApplicationResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the platform application objects for the supported push notification services, such as APNS and FCM. The results for ListPlatformApplications are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call ListPlatformApplications using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see Using Amazon SNS Mobile Push Notifications.  This action is throttled at 15 transactions per second (TPS).
    public func listPlatformApplicationsPaginator(
        _ input: ListPlatformApplicationsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPlatformApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPlatformApplications, tokenKey: \ListPlatformApplicationsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a NextToken is also returned. Use the NextToken parameter in a new ListSubscriptions call to get further results. This action is throttled at 30 transactions per second (TPS).
    public func listSubscriptionsPaginator(
        _ input: ListSubscriptionsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSubscriptionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSubscriptions, tokenKey: \ListSubscriptionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a NextToken is also returned. Use the NextToken parameter in a new ListSubscriptionsByTopic call to get further results. This action is throttled at 30 transactions per second (TPS).
    public func listSubscriptionsByTopicPaginator(
        _ input: ListSubscriptionsByTopicInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSubscriptionsByTopicResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSubscriptionsByTopic, tokenKey: \ListSubscriptionsByTopicResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a NextToken is also returned. Use the NextToken parameter in a new ListTopics call to get further results. This action is throttled at 30 transactions per second (TPS).
    public func listTopicsPaginator(
        _ input: ListTopicsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTopicsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTopics, tokenKey: \ListTopicsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension SNS.ListEndpointsByPlatformApplicationInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SNS.ListEndpointsByPlatformApplicationInput {
        return .init(
            nextToken: token,
            platformApplicationArn: self.platformApplicationArn
        )

    }
}

extension SNS.ListPlatformApplicationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SNS.ListPlatformApplicationsInput {
        return .init(
            nextToken: token
        )

    }
}

extension SNS.ListSubscriptionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SNS.ListSubscriptionsInput {
        return .init(
            nextToken: token
        )

    }
}

extension SNS.ListSubscriptionsByTopicInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SNS.ListSubscriptionsByTopicInput {
        return .init(
            nextToken: token,
            topicArn: self.topicArn
        )

    }
}

extension SNS.ListTopicsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SNS.ListTopicsInput {
        return .init(
            nextToken: token
        )

    }
}


