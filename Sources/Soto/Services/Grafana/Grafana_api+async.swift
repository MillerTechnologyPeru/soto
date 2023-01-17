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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Grafana {
    // MARK: Async API Calls

    /// Assigns a Grafana Enterprise license to a workspace. Upgrading to Grafana Enterprise incurs additional fees. For more information, see Upgrade a workspace to Grafana Enterprise.
    public func associateLicense(_ input: AssociateLicenseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateLicenseResponse {
        return try await self.client.execute(operation: "AssociateLicense", path: "/workspaces/{workspaceId}/licenses/{licenseType}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a workspace. In a workspace, you can create Grafana dashboards and visualizations to analyze your metrics, logs, and traces. You don't have to build, package, or deploy any hardware to run the Grafana server. Don't use CreateWorkspace to modify an existing workspace. Instead,  use UpdateWorkspace.
    public func createWorkspace(_ input: CreateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceResponse {
        return try await self.client.execute(operation: "CreateWorkspace", path: "/workspaces", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Grafana API key for the workspace.  This key can be used to  authenticate requests sent to the workspace's HTTP API. See https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html for available APIs and example requests.
    public func createWorkspaceApiKey(_ input: CreateWorkspaceApiKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceApiKeyResponse {
        return try await self.client.execute(operation: "CreateWorkspaceApiKey", path: "/workspaces/{workspaceId}/apikeys", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Managed Grafana workspace.
    public func deleteWorkspace(_ input: DeleteWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWorkspaceResponse {
        return try await self.client.execute(operation: "DeleteWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Grafana API key for the workspace.
    public func deleteWorkspaceApiKey(_ input: DeleteWorkspaceApiKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWorkspaceApiKeyResponse {
        return try await self.client.execute(operation: "DeleteWorkspaceApiKey", path: "/workspaces/{workspaceId}/apikeys/{keyName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays information about one Amazon Managed Grafana workspace.
    public func describeWorkspace(_ input: DescribeWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspaceResponse {
        return try await self.client.execute(operation: "DescribeWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays information about the authentication methods used in one Amazon Managed Grafana workspace.
    public func describeWorkspaceAuthentication(_ input: DescribeWorkspaceAuthenticationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspaceAuthenticationResponse {
        return try await self.client.execute(operation: "DescribeWorkspaceAuthentication", path: "/workspaces/{workspaceId}/authentication", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the current configuration string for the given workspace.
    public func describeWorkspaceConfiguration(_ input: DescribeWorkspaceConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspaceConfigurationResponse {
        return try await self.client.execute(operation: "DescribeWorkspaceConfiguration", path: "/workspaces/{workspaceId}/configuration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the Grafana Enterprise license from a workspace.
    public func disassociateLicense(_ input: DisassociateLicenseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateLicenseResponse {
        return try await self.client.execute(operation: "DisassociateLicense", path: "/workspaces/{workspaceId}/licenses/{licenseType}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the users and groups who have the Grafana Admin and  Editor roles in this workspace. If you use this  operation without specifying userId or groupId, the operation returns the roles of all users and groups. If you specify a userId or a groupId, only the roles for that user or group are returned. If you do this, you can specify only one userId or  one groupId.
    public func listPermissions(_ input: ListPermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPermissionsResponse {
        return try await self.client.execute(operation: "ListPermissions", path: "/workspaces/{workspaceId}/permissions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The ListTagsForResource operation returns the tags that  are associated with the Amazon Managed Service for Grafana resource specified by the resourceArn.  Currently, the only resource that can be tagged is a workspace.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of Amazon Managed Grafana workspaces in the account, with some information about each workspace. For more complete information about one workspace, use DescribeWorkspace.
    public func listWorkspaces(_ input: ListWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorkspacesResponse {
        return try await self.client.execute(operation: "ListWorkspaces", path: "/workspaces", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The TagResource operation associates tags with an Amazon Managed Grafana resource.  Currently, the only resource that can be tagged is workspaces.  If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource.  If you specify a tag key that is already associated with the resource, the new tag  value that you specify replaces the previous value for that tag.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The UntagResource operation removes the association of the tag with the Amazon Managed Grafana resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates which users in a workspace have the Grafana Admin or Editor roles.
    public func updatePermissions(_ input: UpdatePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePermissionsResponse {
        return try await self.client.execute(operation: "UpdatePermissions", path: "/workspaces/{workspaceId}/permissions", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies an existing Amazon Managed Grafana workspace. If you use this operation and omit any  optional parameters, the existing values of those parameters are not changed. To modify the user authentication methods that the workspace uses, such as SAML or IAM Identity Center,  use UpdateWorkspaceAuthentication. To modify which users in the workspace have the Admin and Editor Grafana roles,  use UpdatePermissions.
    public func updateWorkspace(_ input: UpdateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorkspaceResponse {
        return try await self.client.execute(operation: "UpdateWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to define the identity provider (IdP) that this workspace authenticates users from, using SAML. You can also map SAML assertion attributes to workspace user information and define which groups in the assertion attribute are to have the Admin and Editor roles in the workspace.
    public func updateWorkspaceAuthentication(_ input: UpdateWorkspaceAuthenticationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorkspaceAuthenticationResponse {
        return try await self.client.execute(operation: "UpdateWorkspaceAuthentication", path: "/workspaces/{workspaceId}/authentication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration string for the given workspace
    public func updateWorkspaceConfiguration(_ input: UpdateWorkspaceConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorkspaceConfigurationResponse {
        return try await self.client.execute(operation: "UpdateWorkspaceConfiguration", path: "/workspaces/{workspaceId}/configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Grafana {
    /// Lists the users and groups who have the Grafana Admin and  Editor roles in this workspace. If you use this  operation without specifying userId or groupId, the operation returns the roles of all users and groups. If you specify a userId or a groupId, only the roles for that user or group are returned. If you do this, you can specify only one userId or  one groupId.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPermissionsPaginator(
        _ input: ListPermissionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPermissionsRequest, ListPermissionsResponse> {
        return .init(
            input: input,
            command: self.listPermissions,
            inputKey: \ListPermissionsRequest.nextToken,
            outputKey: \ListPermissionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns a list of Amazon Managed Grafana workspaces in the account, with some information about each workspace. For more complete information about one workspace, use DescribeWorkspace.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWorkspacesPaginator(
        _ input: ListWorkspacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWorkspacesRequest, ListWorkspacesResponse> {
        return .init(
            input: input,
            command: self.listWorkspaces,
            inputKey: \ListWorkspacesRequest.nextToken,
            outputKey: \ListWorkspacesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)