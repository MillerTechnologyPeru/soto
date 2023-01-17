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

/// Service object for interacting with AWS CodeCatalyst service.
///
///   Amazon CodeCatalyst is in preview release and subject to change.   Welcome to the Amazon CodeCatalyst API reference. This reference provides descriptions of operations and data types for Amazon CodeCatalyst. You can use the Amazon CodeCatalyst  API to work with the following objects.  Dev Environments and the Amazon Web Services Toolkits, by calling the following:    CreateAccessToken, which creates a personal access token (PAT) for the current user.    CreateDevEnvironment, which creates a Dev Environment,  where you can quickly work on the code stored in the source repositories of your project.    CreateProject which creates a project in a specified space.    CreateSourceRepositoryBranch, which creates a branch in a specified repository where you can work on code.    DeleteDevEnvironment, which deletes a Dev Environment.    GetDevEnvironment, which returns information about a Dev Environment.    GetProject, which returns information about a project.    GetSourceRepositoryCloneUrls, which returns information about the URLs that can be used with a Git client to clone a source repository.    GetSubscription, which returns information about the Amazon Web Services account used for billing purposes  and the billing plan for the space.    GetUserDetails, which returns information about a user in Amazon CodeCatalyst.    ListDevEnvironments, which retrives a list of Dev Environments in a project.    ListProjects, which retrieves a list of projects in a space.    ListSourceRepositories, which retrieves a list of source repositories in a project.    ListSourceRepositoryBranches, which retrieves a list of branches in a source repository.    ListSpaces, which retrieves a list of spaces.    StartDevEnvironment, which starts a specified Dev Environment and puts it into an active state.    StartDevEnvironmentSession, which starts a session to a specified Dev Environment.    StopDevEnvironment, which stops a specified Dev Environment and puts it into an stopped state.    UpdateDevEnvironment, which changes one or more values for a Dev Environment.    VerifySession, which verifies whether the calling user has a valid Amazon CodeCatalyst login and session.   Security, activity, and resource management in Amazon CodeCatalyst, by calling the following:    DeleteAccessToken, which deletes a specified personal access token (PAT).    ListAccessTokens, which lists all personal access tokens (PATs) associated with a user.    ListEventLogs, which retrieves a list of events that occurred during a specified time period in a space.
public struct CodeCatalyst: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeCatalyst client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: nil,
            partition: partition,
            service: "codecatalyst",
            serviceProtocol: .restjson,
            apiVersion: "2022-09-28",
            endpoint: endpoint,
            serviceEndpoints: [
                "aws-global": "codecatalyst.global.api.aws"
            ],
            errorType: CodeCatalystErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a personal access token (PAT) for the current user. A personal access token (PAT) is similar to a password.  It is associated with your user account. You use PATs to access Amazon CodeCatalyst resources such as source repositories from third-party applications  like Git and integrated development environments (IDEs). For more information, see  Managing personal access tokens in Amazon CodeCatalyst.
    public func createAccessToken(_ input: CreateAccessTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccessTokenResponse> {
        return self.client.execute(operation: "CreateAccessToken", path: "/v1/accessTokens", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Dev Environment in Amazon CodeCatalyst, a cloud-based development Dev Environment that you can use to quickly work on the code stored in the source repositories of your project.  By default, a Dev Environment is configured to have a 2 core processor, 4GB of RAM, and 16GB of persistent storage.
    public func createDevEnvironment(_ input: CreateDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDevEnvironmentResponse> {
        return self.client.execute(operation: "CreateDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a project in a specified space.
    public func createProject(_ input: CreateProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        return self.client.execute(operation: "CreateProject", path: "/v1/spaces/{spaceName}/projects", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a branch in a specified source repository in Amazon CodeCatalyst.   This API only creates a branch in a source repository hosted in Amazon CodeCatalyst. You cannot use this API to create a branch in a linked repository.
    public func createSourceRepositoryBranch(_ input: CreateSourceRepositoryBranchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSourceRepositoryBranchResponse> {
        return self.client.execute(operation: "CreateSourceRepositoryBranch", path: "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches/{name}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a specified personal access token (PAT). A personal access token can only be deleted by the user who created it.
    public func deleteAccessToken(_ input: DeleteAccessTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccessTokenResponse> {
        return self.client.execute(operation: "DeleteAccessToken", path: "/v1/accessTokens/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Dev Environment.
    public func deleteDevEnvironment(_ input: DeleteDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDevEnvironmentResponse> {
        return self.client.execute(operation: "DeleteDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a Dev Environment for a source repository in a project. Dev Environments are specific to the user who creates them.
    public func getDevEnvironment(_ input: GetDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevEnvironmentResponse> {
        return self.client.execute(operation: "GetDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a project.
    public func getProject(_ input: GetProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProjectResponse> {
        return self.client.execute(operation: "GetProject", path: "/v1/spaces/{spaceName}/projects/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the URLs that can be used with a Git client to clone a source repository.
    public func getSourceRepositoryCloneUrls(_ input: GetSourceRepositoryCloneUrlsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSourceRepositoryCloneUrlsResponse> {
        return self.client.execute(operation: "GetSourceRepositoryCloneUrls", path: "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/cloneUrls", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about an space.
    public func getSpace(_ input: GetSpaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSpaceResponse> {
        return self.client.execute(operation: "GetSpace", path: "/v1/spaces/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the Amazon Web Services account used for billing purposes  and the billing plan for the space.
    public func getSubscription(_ input: GetSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSubscriptionResponse> {
        return self.client.execute(operation: "GetSubscription", path: "/v1/spaces/{spaceName}/subscription", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a user.
    public func getUserDetails(_ input: GetUserDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUserDetailsResponse> {
        return self.client.execute(operation: "GetUserDetails", path: "/userDetails", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all personal access tokens (PATs) associated with the user who calls the API. You can only list PATs associated with your user account.
    public func listAccessTokens(_ input: ListAccessTokensRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccessTokensResponse> {
        return self.client.execute(operation: "ListAccessTokens", path: "/v1/accessTokens", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrives a list of Dev Environments in a project.
    public func listDevEnvironments(_ input: ListDevEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDevEnvironmentsResponse> {
        return self.client.execute(operation: "ListDevEnvironments", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of events that occurred during a specified time period in a space. You can use these events to audit user and system activity in a space.
    public func listEventLogs(_ input: ListEventLogsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEventLogsResponse> {
        return self.client.execute(operation: "ListEventLogs", path: "/v1/spaces/{spaceName}/eventLogs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of projects.
    public func listProjects(_ input: ListProjectsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProjectsResponse> {
        return self.client.execute(operation: "ListProjects", path: "/v1/spaces/{spaceName}/projects", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of source repositories in a project.
    public func listSourceRepositories(_ input: ListSourceRepositoriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSourceRepositoriesResponse> {
        return self.client.execute(operation: "ListSourceRepositories", path: "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of branches in a specified source repository.
    public func listSourceRepositoryBranches(_ input: ListSourceRepositoryBranchesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSourceRepositoryBranchesResponse> {
        return self.client.execute(operation: "ListSourceRepositoryBranches", path: "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of spaces.
    public func listSpaces(_ input: ListSpacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSpacesResponse> {
        return self.client.execute(operation: "ListSpaces", path: "/v1/spaces", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a specified Dev Environment and puts it into an active state.
    public func startDevEnvironment(_ input: StartDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDevEnvironmentResponse> {
        return self.client.execute(operation: "StartDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/start", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a session for a specified Dev Environment.
    public func startDevEnvironmentSession(_ input: StartDevEnvironmentSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDevEnvironmentSessionResponse> {
        return self.client.execute(operation: "StartDevEnvironmentSession", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Pauses a specified Dev Environment and places it in a non-running state. Stopped Dev Environments do not consume compute minutes.
    public func stopDevEnvironment(_ input: StopDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopDevEnvironmentResponse> {
        return self.client.execute(operation: "StopDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/stop", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes one or more values for a Dev Environment. Updating certain values of the Dev Environment will cause a restart.
    public func updateDevEnvironment(_ input: UpdateDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDevEnvironmentResponse> {
        return self.client.execute(operation: "UpdateDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Verifies whether the calling user has a valid Amazon CodeCatalyst login and session.  If successful, this returns the ID of the user in Amazon CodeCatalyst.
    public func verifySession(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifySessionResponse> {
        return self.client.execute(operation: "VerifySession", path: "/session", httpMethod: .GET, serviceConfig: self.config, logger: logger, on: eventLoop)
    }
}

extension CodeCatalyst {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CodeCatalyst, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension CodeCatalyst {
    /// Lists all personal access tokens (PATs) associated with the user who calls the API. You can only list PATs associated with your user account.
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
    public func listAccessTokensPaginator<Result>(
        _ input: ListAccessTokensRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAccessTokensResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listAccessTokens,
            inputKey: \ListAccessTokensRequest.nextToken,
            outputKey: \ListAccessTokensResponse.nextToken,
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
    public func listAccessTokensPaginator(
        _ input: ListAccessTokensRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAccessTokensResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listAccessTokens,
            inputKey: \ListAccessTokensRequest.nextToken,
            outputKey: \ListAccessTokensResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Retrives a list of Dev Environments in a project.
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
    public func listDevEnvironmentsPaginator<Result>(
        _ input: ListDevEnvironmentsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDevEnvironmentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listDevEnvironments,
            inputKey: \ListDevEnvironmentsRequest.nextToken,
            outputKey: \ListDevEnvironmentsResponse.nextToken,
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
    public func listDevEnvironmentsPaginator(
        _ input: ListDevEnvironmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDevEnvironmentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listDevEnvironments,
            inputKey: \ListDevEnvironmentsRequest.nextToken,
            outputKey: \ListDevEnvironmentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Retrieves a list of events that occurred during a specified time period in a space. You can use these events to audit user and system activity in a space.
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
    public func listEventLogsPaginator<Result>(
        _ input: ListEventLogsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEventLogsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listEventLogs,
            inputKey: \ListEventLogsRequest.nextToken,
            outputKey: \ListEventLogsResponse.nextToken,
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
    public func listEventLogsPaginator(
        _ input: ListEventLogsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEventLogsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listEventLogs,
            inputKey: \ListEventLogsRequest.nextToken,
            outputKey: \ListEventLogsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Retrieves a list of projects.
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
    public func listProjectsPaginator<Result>(
        _ input: ListProjectsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListProjectsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listProjects,
            inputKey: \ListProjectsRequest.nextToken,
            outputKey: \ListProjectsResponse.nextToken,
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
    public func listProjectsPaginator(
        _ input: ListProjectsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProjectsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listProjects,
            inputKey: \ListProjectsRequest.nextToken,
            outputKey: \ListProjectsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Retrieves a list of source repositories in a project.
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
    public func listSourceRepositoriesPaginator<Result>(
        _ input: ListSourceRepositoriesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSourceRepositoriesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listSourceRepositories,
            inputKey: \ListSourceRepositoriesRequest.nextToken,
            outputKey: \ListSourceRepositoriesResponse.nextToken,
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
    public func listSourceRepositoriesPaginator(
        _ input: ListSourceRepositoriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSourceRepositoriesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listSourceRepositories,
            inputKey: \ListSourceRepositoriesRequest.nextToken,
            outputKey: \ListSourceRepositoriesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Retrieves a list of branches in a specified source repository.
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
    public func listSourceRepositoryBranchesPaginator<Result>(
        _ input: ListSourceRepositoryBranchesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSourceRepositoryBranchesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listSourceRepositoryBranches,
            inputKey: \ListSourceRepositoryBranchesRequest.nextToken,
            outputKey: \ListSourceRepositoryBranchesResponse.nextToken,
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
    public func listSourceRepositoryBranchesPaginator(
        _ input: ListSourceRepositoryBranchesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSourceRepositoryBranchesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listSourceRepositoryBranches,
            inputKey: \ListSourceRepositoryBranchesRequest.nextToken,
            outputKey: \ListSourceRepositoryBranchesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Retrieves a list of spaces.
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
    public func listSpacesPaginator<Result>(
        _ input: ListSpacesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSpacesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listSpaces,
            inputKey: \ListSpacesRequest.nextToken,
            outputKey: \ListSpacesResponse.nextToken,
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
    public func listSpacesPaginator(
        _ input: ListSpacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSpacesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listSpaces,
            inputKey: \ListSpacesRequest.nextToken,
            outputKey: \ListSpacesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension CodeCatalyst.ListAccessTokensRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListAccessTokensRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CodeCatalyst.ListDevEnvironmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListDevEnvironmentsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName,
            spaceName: self.spaceName
        )
    }
}

extension CodeCatalyst.ListEventLogsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListEventLogsRequest {
        return .init(
            endTime: self.endTime,
            eventName: self.eventName,
            maxResults: self.maxResults,
            nextToken: token,
            spaceName: self.spaceName,
            startTime: self.startTime
        )
    }
}

extension CodeCatalyst.ListProjectsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListProjectsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            spaceName: self.spaceName
        )
    }
}

extension CodeCatalyst.ListSourceRepositoriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListSourceRepositoriesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName,
            spaceName: self.spaceName
        )
    }
}

extension CodeCatalyst.ListSourceRepositoryBranchesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListSourceRepositoryBranchesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName,
            sourceRepositoryName: self.sourceRepositoryName,
            spaceName: self.spaceName
        )
    }
}

extension CodeCatalyst.ListSpacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListSpacesRequest {
        return .init(
            nextToken: token
        )
    }
}