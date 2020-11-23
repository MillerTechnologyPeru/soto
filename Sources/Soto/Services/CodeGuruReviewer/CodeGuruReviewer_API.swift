//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
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

/*
 Client object for interacting with AWS CodeGuruReviewer service.

 This section provides documentation for the Amazon CodeGuru Reviewer API operations. CodeGuru Reviewer is a service that uses program analysis and machine learning to detect potential defects that are difficult for developers to find and recommends fixes in your Java code. By proactively detecting and providing recommendations for addressing code defects and implementing best practices, CodeGuru Reviewer improves the overall quality and maintainability of your code base during the code review stage. For more information about CodeGuru Reviewer, see the  Amazon CodeGuru Reviewer User Guide.   To improve the security of your CodeGuru Reviewer API calls, you can establish a private connection between your VPC and CodeGuru Reviewer by creating an interface VPC endpoint. For more information, see CodeGuru Reviewer and interface VPC endpoints (AWS PrivateLink) in the Amazon CodeGuru Reviewer User Guide.
 */
public struct CodeGuruReviewer: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeGuruReviewer client
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
            service: "codeguru-reviewer",
            serviceProtocol: .restjson,
            apiVersion: "2019-09-19",
            endpoint: endpoint,
            errorType: CodeGuruReviewerErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///   Use to associate an AWS CodeCommit repository or a repostory managed by AWS CodeStar Connections with Amazon CodeGuru Reviewer. When you associate a repository, CodeGuru Reviewer reviews source code changes in the repository's pull requests and provides automatic recommendations. You can view recommendations using the CodeGuru Reviewer console. For more information, see Recommendations in Amazon CodeGuru Reviewer in the Amazon CodeGuru Reviewer User Guide.  If you associate a CodeCommit repository, it must be in the same AWS Region and AWS account where its CodeGuru Reviewer code reviews are configured. Bitbucket and GitHub Enterprise Server repositories are managed by AWS CodeStar Connections to connect to CodeGuru Reviewer. For more information, see Connect to a repository source provider in the Amazon CodeGuru Reviewer User Guide.    You cannot use the CodeGuru Reviewer SDK or the AWS CLI to associate a GitHub repository with Amazon CodeGuru Reviewer. To associate a GitHub repository, use the console. For more information, see Getting started with CodeGuru Reviewer in the CodeGuru Reviewer User Guide.
    public func associateRepository(_ input: AssociateRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateRepositoryResponse> {
        return self.client.execute(operation: "AssociateRepository", path: "/associations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Use to create a code review with a  CodeReviewType  of RepositoryAnalysis. This type of code review analyzes all code under a specified branch in an associated repository. PullRequest code reviews are automatically triggered by a pull request so cannot be created using this method.
    public func createCodeReview(_ input: CreateCodeReviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCodeReviewResponse> {
        return self.client.execute(operation: "CreateCodeReview", path: "/codereviews", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Returns the metadata associated with the code review along with its status.
    public func describeCodeReview(_ input: DescribeCodeReviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeReviewResponse> {
        return self.client.execute(operation: "DescribeCodeReview", path: "/codereviews/{CodeReviewArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Describes the customer feedback for a CodeGuru Reviewer recommendation.
    public func describeRecommendationFeedback(_ input: DescribeRecommendationFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecommendationFeedbackResponse> {
        return self.client.execute(operation: "DescribeRecommendationFeedback", path: "/feedback/{CodeReviewArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Returns a  RepositoryAssociation  object that contains information about the requested repository association.
    public func describeRepositoryAssociation(_ input: DescribeRepositoryAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoryAssociationResponse> {
        return self.client.execute(operation: "DescribeRepositoryAssociation", path: "/associations/{AssociationArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes the association between Amazon CodeGuru Reviewer and a repository.
    public func disassociateRepository(_ input: DisassociateRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateRepositoryResponse> {
        return self.client.execute(operation: "DisassociateRepository", path: "/associations/{AssociationArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Lists all the code reviews that the customer has created in the past 90 days.
    public func listCodeReviews(_ input: ListCodeReviewsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCodeReviewsResponse> {
        return self.client.execute(operation: "ListCodeReviews", path: "/codereviews", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Returns a list of  RecommendationFeedbackSummary  objects that contain customer recommendation feedback for all CodeGuru Reviewer users.
    public func listRecommendationFeedback(_ input: ListRecommendationFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecommendationFeedbackResponse> {
        return self.client.execute(operation: "ListRecommendationFeedback", path: "/feedback/{CodeReviewArn}/RecommendationFeedback", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Returns the list of all recommendations for a completed code review.
    public func listRecommendations(_ input: ListRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecommendationsResponse> {
        return self.client.execute(operation: "ListRecommendations", path: "/codereviews/{CodeReviewArn}/Recommendations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Returns a list of  RepositoryAssociationSummary  objects that contain summary information about a repository association. You can filter the returned list by  ProviderType ,  Name ,  State , and  Owner .
    public func listRepositoryAssociations(_ input: ListRepositoryAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRepositoryAssociationsResponse> {
        return self.client.execute(operation: "ListRepositoryAssociations", path: "/associations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the list of tags associated with an associated repository resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Stores customer feedback for a CodeGuru Reviewer recommendation. When this API is called again with different reactions the previous feedback is overwritten.
    public func putRecommendationFeedback(_ input: PutRecommendationFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutRecommendationFeedbackResponse> {
        return self.client.execute(operation: "PutRecommendationFeedback", path: "/feedback", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Adds one or more tags to an associated repository.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes a tag from an associated repository.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension CodeGuruReviewer {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CodeGuruReviewer, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
