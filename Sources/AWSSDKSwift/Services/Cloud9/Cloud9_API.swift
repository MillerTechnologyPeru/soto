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

@_exported import AWSSDKSwiftCore

/**
Client object for interacting with AWS Cloud9 service.

AWS Cloud9 AWS Cloud9 is a collection of tools that you can use to code, build, run, test, debug, and release software in the cloud. For more information about AWS Cloud9, see the AWS Cloud9 User Guide. AWS Cloud9 supports these operations:    CreateEnvironmentEC2: Creates an AWS Cloud9 development environment, launches an Amazon EC2 instance, and then connects from the instance to the environment.    CreateEnvironmentMembership: Adds an environment member to an environment.    DeleteEnvironment: Deletes an environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.    DeleteEnvironmentMembership: Deletes an environment member from an environment.    DescribeEnvironmentMemberships: Gets information about environment members for an environment.    DescribeEnvironments: Gets information about environments.    DescribeEnvironmentStatus: Gets status information for an environment.    ListEnvironments: Gets a list of environment identifiers.    ListTagsForResource: Gets the tags for an environment.    TagResource: Adds tags to an environment.    UntagResource: Removes tags from an environment.    UpdateEnvironment: Changes the settings of an existing environment.    UpdateEnvironmentMembership: Changes the settings of an existing environment member for an environment.  
*/
public struct Cloud9 {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Cloud9 client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSCloud9WorkspaceManagementService",
            service: "cloud9",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-09-23",
            endpoint: endpoint,
            possibleErrorTypes: [Cloud9ErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.
    public func createEnvironmentEC2(_ input: CreateEnvironmentEC2Request, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateEnvironmentEC2Result> {
        return client.execute(operation: "CreateEnvironmentEC2", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds an environment member to an AWS Cloud9 development environment.
    public func createEnvironmentMembership(_ input: CreateEnvironmentMembershipRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateEnvironmentMembershipResult> {
        return client.execute(operation: "CreateEnvironmentMembership", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.
    public func deleteEnvironment(_ input: DeleteEnvironmentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteEnvironmentResult> {
        return client.execute(operation: "DeleteEnvironment", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an environment member from an AWS Cloud9 development environment.
    public func deleteEnvironmentMembership(_ input: DeleteEnvironmentMembershipRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteEnvironmentMembershipResult> {
        return client.execute(operation: "DeleteEnvironmentMembership", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about environment members for an AWS Cloud9 development environment.
    public func describeEnvironmentMemberships(_ input: DescribeEnvironmentMembershipsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeEnvironmentMembershipsResult> {
        return client.execute(operation: "DescribeEnvironmentMemberships", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets status information for an AWS Cloud9 development environment.
    public func describeEnvironmentStatus(_ input: DescribeEnvironmentStatusRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeEnvironmentStatusResult> {
        return client.execute(operation: "DescribeEnvironmentStatus", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about AWS Cloud9 development environments.
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeEnvironmentsResult> {
        return client.execute(operation: "DescribeEnvironments", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of AWS Cloud9 development environment identifiers.
    public func listEnvironments(_ input: ListEnvironmentsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListEnvironmentsResult> {
        return client.execute(operation: "ListEnvironments", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of the tags associated with an AWS Cloud9 development environment.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds tags to an AWS Cloud9 development environment.  Tags that you add to an AWS Cloud9 environment by using this method will NOT be automatically propagated to underlying resources. 
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes tags from an AWS Cloud9 development environment.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Changes the settings of an existing AWS Cloud9 development environment.
    public func updateEnvironment(_ input: UpdateEnvironmentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateEnvironmentResult> {
        return client.execute(operation: "UpdateEnvironment", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Changes the settings of an existing environment member for an AWS Cloud9 development environment.
    public func updateEnvironmentMembership(_ input: UpdateEnvironmentMembershipRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateEnvironmentMembershipResult> {
        return client.execute(operation: "UpdateEnvironmentMembership", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
