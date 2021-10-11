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

/// Service object for interacting with AWS ManagedGrafana service.
///
/// Amazon Managed Grafana is a fully managed and secure data visualization service that you can use to instantly query, correlate, and visualize operational metrics, logs, and traces from multiple sources. Amazon Managed Grafana makes it easy to deploy, operate, and scale Grafana, a widely deployed data visualization tool that is popular for its extensible data support. With Amazon Managed Grafana, you create logically isolated Grafana servers called workspaces. In a workspace, you can create Grafana dashboards and visualizations to analyze your metrics, logs, and traces without having to build, package, or deploy any hardware to run Grafana servers.
public struct ManagedGrafana: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ManagedGrafana client
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
            service: "grafana",
            serviceProtocol: .restjson,
            apiVersion: "2020-08-18",
            endpoint: endpoint,
            serviceEndpoints: ["ap-northeast-1": "grafana.ap-northeast-1.amazonaws.com", "ap-northeast-2": "grafana.ap-northeast-2.amazonaws.com", "ap-southeast-1": "grafana.ap-southeast-1.amazonaws.com", "ap-southeast-2": "grafana.ap-southeast-2.amazonaws.com", "eu-central-1": "grafana.eu-central-1.amazonaws.com", "eu-west-1": "grafana.eu-west-1.amazonaws.com", "eu-west-2": "grafana.eu-west-2.amazonaws.com", "us-east-1": "grafana.us-east-1.amazonaws.com", "us-east-2": "grafana.us-east-2.amazonaws.com", "us-west-2": "grafana.us-west-2.amazonaws.com"],
            errorType: ManagedGrafanaErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Assigns a Grafana Enterprise license to a workspace. Upgrading to Grafana Enterprise incurs additional fees. For more information, see Upgrade a workspace to Grafana Enterprise.
    public func associateLicense(_ input: AssociateLicenseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateLicenseResponse> {
        return self.client.execute(operation: "AssociateLicense", path: "/workspaces/{workspaceId}/licenses/{licenseType}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a workspace. In a workspace, you can create Grafana dashboards and visualizations to analyze your metrics, logs, and traces. You don't have to build, package, or deploy any hardware to run the Grafana server. Don't use CreateWorkspace to modify an existing workspace. Instead, use UpdateWorkspace.
    public func createWorkspace(_ input: CreateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkspaceResponse> {
        return self.client.execute(operation: "CreateWorkspace", path: "/workspaces", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Managed Grafana workspace.
    public func deleteWorkspace(_ input: DeleteWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWorkspaceResponse> {
        return self.client.execute(operation: "DeleteWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays information about one Amazon Managed Grafana workspace.
    public func describeWorkspace(_ input: DescribeWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceResponse> {
        return self.client.execute(operation: "DescribeWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays information about the authentication methods used in one Amazon Managed Grafana workspace.
    public func describeWorkspaceAuthentication(_ input: DescribeWorkspaceAuthenticationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceAuthenticationResponse> {
        return self.client.execute(operation: "DescribeWorkspaceAuthentication", path: "/workspaces/{workspaceId}/authentication", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the Grafana Enterprise license from a workspace.
    public func disassociateLicense(_ input: DisassociateLicenseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateLicenseResponse> {
        return self.client.execute(operation: "DisassociateLicense", path: "/workspaces/{workspaceId}/licenses/{licenseType}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the users and groups who have the Grafana Admin and Editor roles in this workspace. If you use this operation without specifying userId or groupId, the operation returns the roles of all users and groups. If you specify a userId or a groupId, only the roles for that user or group are returned. If you do this, you can specify only one userId or one groupId.
    public func listPermissions(_ input: ListPermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPermissionsResponse> {
        return self.client.execute(operation: "ListPermissions", path: "/workspaces/{workspaceId}/permissions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of Amazon Managed Grafana workspaces in the account, with some information about each workspace. For more complete information about one workspace, use DescribeWorkspace.
    public func listWorkspaces(_ input: ListWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorkspacesResponse> {
        return self.client.execute(operation: "ListWorkspaces", path: "/workspaces", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates which users in a workspace have the Grafana Admin or Editor roles.
    public func updatePermissions(_ input: UpdatePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePermissionsResponse> {
        return self.client.execute(operation: "UpdatePermissions", path: "/workspaces/{workspaceId}/permissions", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies an existing Amazon Managed Grafana workspace. If you use this operation and omit any optional parameters, the existing values of those parameters are not changed. To modify the user authentication methods that the workspace uses, such as SAML or Amazon Web Services SSO, use UpdateWorkspaceAuthentication. To modify which users in the workspace have the Admin and Editor Grafana roles, use UpdatePermissions.
    public func updateWorkspace(_ input: UpdateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorkspaceResponse> {
        return self.client.execute(operation: "UpdateWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to define the identity provider (IdP) that this workspace authenticates users from, using SAML. You can also map SAML assertion attributes to workspace user information and define which groups in the assertion attribute are to have the Admin and Editor roles in the workspace.
    public func updateWorkspaceAuthentication(_ input: UpdateWorkspaceAuthenticationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorkspaceAuthenticationResponse> {
        return self.client.execute(operation: "UpdateWorkspaceAuthentication", path: "/workspaces/{workspaceId}/authentication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ManagedGrafana {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ManagedGrafana, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
