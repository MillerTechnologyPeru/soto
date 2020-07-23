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

extension CodeDeploy {

    ///  Lists information about revisions for an application.
    public func listApplicationRevisionsPaginator(
        _ input: ListApplicationRevisionsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListApplicationRevisionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listApplicationRevisions, tokenKey: \ListApplicationRevisionsOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the applications registered with the IAM user or AWS account.
    public func listApplicationsPaginator(
        _ input: ListApplicationsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListApplicationsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listApplications, tokenKey: \ListApplicationsOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the deployment configurations with the IAM user or AWS account.
    public func listDeploymentConfigsPaginator(
        _ input: ListDeploymentConfigsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDeploymentConfigsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDeploymentConfigs, tokenKey: \ListDeploymentConfigsOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the deployment groups for an application registered with the IAM user or AWS account.
    public func listDeploymentGroupsPaginator(
        _ input: ListDeploymentGroupsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDeploymentGroupsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDeploymentGroups, tokenKey: \ListDeploymentGroupsOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///    The newer BatchGetDeploymentTargets should be used instead because it works with all compute types. ListDeploymentInstances throws an exception if it is used with a compute platform other than EC2/On-premises or AWS Lambda.    Lists the instance for a deployment associated with the IAM user or AWS account. 
    @available(*, deprecated, message:"This operation is deprecated, use ListDeploymentTargets instead.")
    public func listDeploymentInstancesPaginator(
        _ input: ListDeploymentInstancesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDeploymentInstancesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDeploymentInstances, tokenKey: \ListDeploymentInstancesOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the deployments in a deployment group for an application registered with the IAM user or AWS account.
    public func listDeploymentsPaginator(
        _ input: ListDeploymentsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDeploymentsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDeployments, tokenKey: \ListDeploymentsOutput.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension CodeDeploy.ListApplicationRevisionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeDeploy.ListApplicationRevisionsInput {
        return .init(
            applicationName: self.applicationName,
            deployed: self.deployed,
            nextToken: token,
            s3Bucket: self.s3Bucket,
            s3KeyPrefix: self.s3KeyPrefix,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )

    }
}

extension CodeDeploy.ListApplicationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeDeploy.ListApplicationsInput {
        return .init(
            nextToken: token
        )

    }
}

extension CodeDeploy.ListDeploymentConfigsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeDeploy.ListDeploymentConfigsInput {
        return .init(
            nextToken: token
        )

    }
}

extension CodeDeploy.ListDeploymentGroupsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeDeploy.ListDeploymentGroupsInput {
        return .init(
            applicationName: self.applicationName,
            nextToken: token
        )

    }
}

extension CodeDeploy.ListDeploymentInstancesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeDeploy.ListDeploymentInstancesInput {
        return .init(
            deploymentId: self.deploymentId,
            instanceStatusFilter: self.instanceStatusFilter,
            instanceTypeFilter: self.instanceTypeFilter,
            nextToken: token
        )

    }
}

extension CodeDeploy.ListDeploymentsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeDeploy.ListDeploymentsInput {
        return .init(
            applicationName: self.applicationName,
            createTimeRange: self.createTimeRange,
            deploymentGroupName: self.deploymentGroupName,
            externalId: self.externalId,
            includeOnlyStatuses: self.includeOnlyStatuses,
            nextToken: token
        )

    }
}


