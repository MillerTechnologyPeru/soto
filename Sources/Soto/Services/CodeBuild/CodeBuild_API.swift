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

/// Service object for interacting with AWS CodeBuild service.
///
/// AWS CodeBuild AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild compiles your source code, runs unit tests, and produces artifacts that are ready to deploy. AWS CodeBuild eliminates the need to provision, manage, and scale your own build servers. It provides prepackaged build environments for the most popular programming languages and build tools, such as Apache Maven, Gradle, and more. You can also fully customize build environments in AWS CodeBuild to use your own build tools. AWS CodeBuild scales automatically to meet peak build requests. You pay only for the build time you consume. For more information about AWS CodeBuild, see the  AWS CodeBuild User Guide.  AWS CodeBuild supports these operations:    BatchDeleteBuilds: Deletes one or more builds.    BatchGetBuilds: Gets information about one or more builds.    BatchGetProjects: Gets information about one or more build projects. A build project defines how AWS CodeBuild runs a build. This includes information such as where to get the source code to build, the build environment to use, the build commands to run, and where to store the build output. A build environment is a representation of operating system, programming language runtime, and tools that AWS CodeBuild uses to run a build. You can add tags to build projects to help manage your resources and costs.    BatchGetReportGroups: Returns an array of report groups.     BatchGetReports: Returns an array of reports.     CreateProject: Creates a build project.    CreateReportGroup: Creates a report group. A report group contains a collection of reports.     CreateWebhook: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.    DeleteProject: Deletes a build project.    DeleteReport: Deletes a report.     DeleteReportGroup: Deletes a report group.     DeleteResourcePolicy: Deletes a resource policy that is identified by its resource ARN.     DeleteSourceCredentials: Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.    DeleteWebhook: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.    DescribeTestCases: Returns a list of details about test cases for a report.     GetResourcePolicy: Gets a resource policy that is identified by its resource ARN.     ImportSourceCredentials: Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.    InvalidateProjectCache: Resets the cache for a project.    ListBuilds: Gets a list of build IDs, with each build ID representing a single build.    ListBuildsForProject: Gets a list of build IDs for the specified build project, with each build ID representing a single build.    ListCuratedEnvironmentImages: Gets information about Docker images that are managed by AWS CodeBuild.    ListProjects: Gets a list of build project names, with each build project name representing a single build project.    ListReportGroups: Gets a list ARNs for the report groups in the current AWS account.     ListReports: Gets a list ARNs for the reports in the current AWS account.     ListReportsForReportGroup: Returns a list of ARNs for the reports that belong to a ReportGroup.     ListSharedProjects: Gets a list of ARNs associated with projects shared with the current AWS account or user.    ListSharedReportGroups: Gets a list of ARNs associated with report groups shared with the current AWS account or user    ListSourceCredentials: Returns a list of SourceCredentialsInfo objects. Each SourceCredentialsInfo object includes the authentication type, token ARN, and type of source provider for one set of credentials.    PutResourcePolicy: Stores a resource policy for the ARN of a Project or ReportGroup object.     StartBuild: Starts running a build.    StopBuild: Attempts to stop running a build.    UpdateProject: Changes the settings of an existing build project.    UpdateReportGroup: Changes a report group.    UpdateWebhook: Changes the settings of an existing webhook.
public struct CodeBuild: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeBuild client
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
            amzTarget: "CodeBuild_20161006",
            service: "codebuild",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-10-06",
            endpoint: endpoint,
            errorType: CodeBuildErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Deletes one or more builds.
    public func batchDeleteBuilds(_ input: BatchDeleteBuildsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteBuildsOutput> {
        return self.client.execute(operation: "BatchDeleteBuilds", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about one or more batch builds.
    public func batchGetBuildBatches(_ input: BatchGetBuildBatchesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetBuildBatchesOutput> {
        return self.client.execute(operation: "BatchGetBuildBatches", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about one or more builds.
    public func batchGetBuilds(_ input: BatchGetBuildsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetBuildsOutput> {
        return self.client.execute(operation: "BatchGetBuilds", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about one or more build projects.
    public func batchGetProjects(_ input: BatchGetProjectsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetProjectsOutput> {
        return self.client.execute(operation: "BatchGetProjects", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns an array of report groups.
    public func batchGetReportGroups(_ input: BatchGetReportGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetReportGroupsOutput> {
        return self.client.execute(operation: "BatchGetReportGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns an array of reports.
    public func batchGetReports(_ input: BatchGetReportsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetReportsOutput> {
        return self.client.execute(operation: "BatchGetReports", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a build project.
    public func createProject(_ input: CreateProjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectOutput> {
        return self.client.execute(operation: "CreateProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a report group. A report group contains a collection of reports.
    public func createReportGroup(_ input: CreateReportGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReportGroupOutput> {
        return self.client.execute(operation: "CreateReportGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.  If you enable webhooks for an AWS CodeBuild project, and the project is used as a build step in AWS CodePipeline, then two identical builds are created for each commit. One build is triggered through webhooks, and one through AWS CodePipeline. Because billing is on a per-build basis, you are billed for both builds. Therefore, if you are using AWS CodePipeline, we recommend that you disable webhooks in AWS CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For more information, see step 5 in Change a Build Project's Settings.
    public func createWebhook(_ input: CreateWebhookInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWebhookOutput> {
        return self.client.execute(operation: "CreateWebhook", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a batch build.
    public func deleteBuildBatch(_ input: DeleteBuildBatchInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBuildBatchOutput> {
        return self.client.execute(operation: "DeleteBuildBatch", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a build project. When you delete a project, its builds are not deleted.
    public func deleteProject(_ input: DeleteProjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProjectOutput> {
        return self.client.execute(operation: "DeleteProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a report.
    public func deleteReport(_ input: DeleteReportInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReportOutput> {
        return self.client.execute(operation: "DeleteReport", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a report group. Before you delete a report group, you must delete its reports.
    public func deleteReportGroup(_ input: DeleteReportGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReportGroupOutput> {
        return self.client.execute(operation: "DeleteReportGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a resource policy that is identified by its resource ARN.
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResourcePolicyOutput> {
        return self.client.execute(operation: "DeleteResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.
    public func deleteSourceCredentials(_ input: DeleteSourceCredentialsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSourceCredentialsOutput> {
        return self.client.execute(operation: "DeleteSourceCredentials", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.
    public func deleteWebhook(_ input: DeleteWebhookInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWebhookOutput> {
        return self.client.execute(operation: "DeleteWebhook", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves one or more code coverage reports.
    public func describeCodeCoverages(_ input: DescribeCodeCoveragesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeCoveragesOutput> {
        return self.client.execute(operation: "DescribeCodeCoverages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of details about test cases for a report.
    public func describeTestCases(_ input: DescribeTestCasesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTestCasesOutput> {
        return self.client.execute(operation: "DescribeTestCases", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getReportGroupTrend(_ input: GetReportGroupTrendInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetReportGroupTrendOutput> {
        return self.client.execute(operation: "GetReportGroupTrend", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a resource policy that is identified by its resource ARN.
    public func getResourcePolicy(_ input: GetResourcePolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourcePolicyOutput> {
        return self.client.execute(operation: "GetResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.
    public func importSourceCredentials(_ input: ImportSourceCredentialsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportSourceCredentialsOutput> {
        return self.client.execute(operation: "ImportSourceCredentials", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Resets the cache for a project.
    public func invalidateProjectCache(_ input: InvalidateProjectCacheInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvalidateProjectCacheOutput> {
        return self.client.execute(operation: "InvalidateProjectCache", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the identifiers of your build batches in the current region.
    public func listBuildBatches(_ input: ListBuildBatchesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBuildBatchesOutput> {
        return self.client.execute(operation: "ListBuildBatches", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the identifiers of the build batches for a specific project.
    public func listBuildBatchesForProject(_ input: ListBuildBatchesForProjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBuildBatchesForProjectOutput> {
        return self.client.execute(operation: "ListBuildBatchesForProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of build IDs, with each build ID representing a single build.
    public func listBuilds(_ input: ListBuildsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBuildsOutput> {
        return self.client.execute(operation: "ListBuilds", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of build IDs for the specified build project, with each build ID representing a single build.
    public func listBuildsForProject(_ input: ListBuildsForProjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBuildsForProjectOutput> {
        return self.client.execute(operation: "ListBuildsForProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about Docker images that are managed by AWS CodeBuild.
    public func listCuratedEnvironmentImages(_ input: ListCuratedEnvironmentImagesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCuratedEnvironmentImagesOutput> {
        return self.client.execute(operation: "ListCuratedEnvironmentImages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of build project names, with each build project name representing a single build project.
    public func listProjects(_ input: ListProjectsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProjectsOutput> {
        return self.client.execute(operation: "ListProjects", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a list ARNs for the report groups in the current AWS account.
    public func listReportGroups(_ input: ListReportGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListReportGroupsOutput> {
        return self.client.execute(operation: "ListReportGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of ARNs for the reports in the current AWS account.
    public func listReports(_ input: ListReportsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListReportsOutput> {
        return self.client.execute(operation: "ListReports", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of ARNs for the reports that belong to a ReportGroup.
    public func listReportsForReportGroup(_ input: ListReportsForReportGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListReportsForReportGroupOutput> {
        return self.client.execute(operation: "ListReportsForReportGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a list of projects that are shared with other AWS accounts or users.
    public func listSharedProjects(_ input: ListSharedProjectsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSharedProjectsOutput> {
        return self.client.execute(operation: "ListSharedProjects", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a list of report groups that are shared with other AWS accounts or users.
    public func listSharedReportGroups(_ input: ListSharedReportGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSharedReportGroupsOutput> {
        return self.client.execute(operation: "ListSharedReportGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of SourceCredentialsInfo objects.
    public func listSourceCredentials(_ input: ListSourceCredentialsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSourceCredentialsOutput> {
        return self.client.execute(operation: "ListSourceCredentials", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Stores a resource policy for the ARN of a Project or ReportGroup object.
    public func putResourcePolicy(_ input: PutResourcePolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutResourcePolicyOutput> {
        return self.client.execute(operation: "PutResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restarts a build.
    public func retryBuild(_ input: RetryBuildInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetryBuildOutput> {
        return self.client.execute(operation: "RetryBuild", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restarts a failed batch build. Only batch builds that have failed can be retried.
    public func retryBuildBatch(_ input: RetryBuildBatchInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetryBuildBatchOutput> {
        return self.client.execute(operation: "RetryBuildBatch", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts running a build.
    public func startBuild(_ input: StartBuildInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartBuildOutput> {
        return self.client.execute(operation: "StartBuild", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a batch build for a project.
    public func startBuildBatch(_ input: StartBuildBatchInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartBuildBatchOutput> {
        return self.client.execute(operation: "StartBuildBatch", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attempts to stop running a build.
    public func stopBuild(_ input: StopBuildInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopBuildOutput> {
        return self.client.execute(operation: "StopBuild", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a running batch build.
    public func stopBuildBatch(_ input: StopBuildBatchInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopBuildBatchOutput> {
        return self.client.execute(operation: "StopBuildBatch", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the settings of a build project.
    public func updateProject(_ input: UpdateProjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProjectOutput> {
        return self.client.execute(operation: "UpdateProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a report group.
    public func updateReportGroup(_ input: UpdateReportGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateReportGroupOutput> {
        return self.client.execute(operation: "UpdateReportGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the webhook associated with an AWS CodeBuild build project.    If you use Bitbucket for your repository, rotateSecret is ignored.
    public func updateWebhook(_ input: UpdateWebhookInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWebhookOutput> {
        return self.client.execute(operation: "UpdateWebhook", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension CodeBuild {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CodeBuild, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
