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

/// Service object for interacting with AWS ResourceGroupsTaggingAPI service.
///
/// Resource Groups Tagging API
public struct ResourceGroupsTaggingAPI: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ResourceGroupsTaggingAPI client
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
            amzTarget: "ResourceGroupsTaggingAPI_20170126",
            service: "tagging",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-01-26",
            endpoint: endpoint,
            errorType: ResourceGroupsTaggingAPIErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Describes the status of the StartReportCreation operation.  You can call this operation only from the organization's  management account and from the us-east-1 Region.
    public func describeReportCreation(_ input: DescribeReportCreationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReportCreationOutput> {
        return self.client.execute(operation: "DescribeReportCreation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a table that shows counts of resources that are noncompliant with their tag policies. For more information on tag policies, see Tag Policies in the Organizations User Guide.  You can call this operation only from the organization's  management account and from the us-east-1 Region. This operation supports pagination, where the response can be sent in  multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    public func getComplianceSummary(_ input: GetComplianceSummaryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetComplianceSummaryOutput> {
        return self.client.execute(operation: "GetComplianceSummary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all the tagged or previously tagged resources that are located in the specified Amazon Web Services Region for the account. Depending on what information you want returned, you can also specify the following:    Filters that specify what tags and resource types you want returned. The response includes all tags that are associated with the requested resources.   Information about compliance with the account's effective tag policy. For more information on tag policies, see Tag Policies in the Organizations User Guide.    This operation supports pagination, where the response can be sent in  multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    public func getResources(_ input: GetResourcesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourcesOutput> {
        return self.client.execute(operation: "GetResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all tag keys currently in use in the specified Amazon Web Services Region for the calling account. This operation supports pagination, where the response can be sent in  multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    public func getTagKeys(_ input: GetTagKeysInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTagKeysOutput> {
        return self.client.execute(operation: "GetTagKeys", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all tag values for the specified key that are used in the specified Amazon Web Services Region for the calling account. This operation supports pagination, where the response can be sent in  multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    public func getTagValues(_ input: GetTagValuesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTagValuesOutput> {
        return self.client.execute(operation: "GetTagValues", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates a report that lists all tagged resources in the accounts across your organization and tells whether each resource is compliant with the effective tag policy. Compliance data is refreshed daily. The report is generated asynchronously. The generated report is saved to the following location:  s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv  You can call this operation only from the organization's  management account and from the us-east-1 Region.
    public func startReportCreation(_ input: StartReportCreationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartReportCreationOutput> {
        return self.client.execute(operation: "StartReportCreation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies one or more tags to the specified resources. Note the following:   Not all resources can have tags. For a list of services with resources that support tagging using this operation, see Services that support the Resource Groups Tagging API. If the resource doesn't yet support this operation, the resource's service might support tagging using its own API operations. For more information, refer to the documentation for that service.   Each resource can have up to 50 tags. For other limits, see Tag Naming and Usage Conventions in the Amazon Web Services General Reference.    You can only tag resources that are located in the specified Amazon Web Services Region for the Amazon Web Services account.   To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see the documentation for each service.    Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data.   Minimum permissions  In addition to the tag:TagResources permission required by this operation, you must also have the tagging permission defined by the service that created the resource. For example, to tag an Amazon EC2 instance using the TagResources operation, you must have both of the following permissions:    tag:TagResource     ec2:CreateTags
    public func tagResources(_ input: TagResourcesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourcesOutput> {
        return self.client.execute(operation: "TagResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you attempt to remove tags from a resource that were already removed. Note the following:   To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information, see the documentation for the service whose resource you want to untag.   You can only tag resources that are located in the specified Amazon Web Services Region for the calling Amazon Web Services account.     Minimum permissions  In addition to the tag:UntagResources permission required by this operation, you must also have the remove tags permission defined by the service that created the resource. For example, to remove the tags from an Amazon EC2 instance using the UntagResources operation, you must have both of the following permissions:    tag:UntagResource     ec2:DeleteTags
    public func untagResources(_ input: UntagResourcesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourcesOutput> {
        return self.client.execute(operation: "UntagResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ResourceGroupsTaggingAPI {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ResourceGroupsTaggingAPI, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension ResourceGroupsTaggingAPI {
    /// Returns a table that shows counts of resources that are noncompliant with their tag policies. For more information on tag policies, see Tag Policies in the Organizations User Guide.  You can call this operation only from the organization's  management account and from the us-east-1 Region. This operation supports pagination, where the response can be sent in  multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getComplianceSummaryPaginator<Result>(
        _ input: GetComplianceSummaryInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetComplianceSummaryOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.getComplianceSummary,
            inputKey: \GetComplianceSummaryInput.paginationToken,
            outputKey: \GetComplianceSummaryOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getComplianceSummaryPaginator(
        _ input: GetComplianceSummaryInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetComplianceSummaryOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.getComplianceSummary,
            inputKey: \GetComplianceSummaryInput.paginationToken,
            outputKey: \GetComplianceSummaryOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns all the tagged or previously tagged resources that are located in the specified Amazon Web Services Region for the account. Depending on what information you want returned, you can also specify the following:    Filters that specify what tags and resource types you want returned. The response includes all tags that are associated with the requested resources.   Information about compliance with the account's effective tag policy. For more information on tag policies, see Tag Policies in the Organizations User Guide.    This operation supports pagination, where the response can be sent in  multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getResourcesPaginator<Result>(
        _ input: GetResourcesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetResourcesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.getResources,
            inputKey: \GetResourcesInput.paginationToken,
            outputKey: \GetResourcesOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getResourcesPaginator(
        _ input: GetResourcesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetResourcesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.getResources,
            inputKey: \GetResourcesInput.paginationToken,
            outputKey: \GetResourcesOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns all tag keys currently in use in the specified Amazon Web Services Region for the calling account. This operation supports pagination, where the response can be sent in  multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getTagKeysPaginator<Result>(
        _ input: GetTagKeysInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetTagKeysOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.getTagKeys,
            inputKey: \GetTagKeysInput.paginationToken,
            outputKey: \GetTagKeysOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getTagKeysPaginator(
        _ input: GetTagKeysInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetTagKeysOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.getTagKeys,
            inputKey: \GetTagKeysInput.paginationToken,
            outputKey: \GetTagKeysOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns all tag values for the specified key that are used in the specified Amazon Web Services Region for the calling account. This operation supports pagination, where the response can be sent in  multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getTagValuesPaginator<Result>(
        _ input: GetTagValuesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetTagValuesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.getTagValues,
            inputKey: \GetTagValuesInput.paginationToken,
            outputKey: \GetTagValuesOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getTagValuesPaginator(
        _ input: GetTagValuesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetTagValuesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.getTagValues,
            inputKey: \GetTagValuesInput.paginationToken,
            outputKey: \GetTagValuesOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ResourceGroupsTaggingAPI.GetComplianceSummaryInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroupsTaggingAPI.GetComplianceSummaryInput {
        return .init(
            groupBy: self.groupBy,
            maxResults: self.maxResults,
            paginationToken: token,
            regionFilters: self.regionFilters,
            resourceTypeFilters: self.resourceTypeFilters,
            tagKeyFilters: self.tagKeyFilters,
            targetIdFilters: self.targetIdFilters
        )
    }
}

extension ResourceGroupsTaggingAPI.GetResourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroupsTaggingAPI.GetResourcesInput {
        return .init(
            excludeCompliantResources: self.excludeCompliantResources,
            includeComplianceDetails: self.includeComplianceDetails,
            paginationToken: token,
            resourceARNList: self.resourceARNList,
            resourcesPerPage: self.resourcesPerPage,
            resourceTypeFilters: self.resourceTypeFilters,
            tagFilters: self.tagFilters,
            tagsPerPage: self.tagsPerPage
        )
    }
}

extension ResourceGroupsTaggingAPI.GetTagKeysInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroupsTaggingAPI.GetTagKeysInput {
        return .init(
            paginationToken: token
        )
    }
}

extension ResourceGroupsTaggingAPI.GetTagValuesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroupsTaggingAPI.GetTagValuesInput {
        return .init(
            key: self.key,
            paginationToken: token
        )
    }
}