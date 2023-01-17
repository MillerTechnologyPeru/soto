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

/// Service object for interacting with AWS WorkDocs service.
///
/// The WorkDocs API is designed for the following use cases:   File Migration: File migration applications are supported for users who want to migrate their files from an on-premises or off-premises file system or service. Users can insert files into a user directory structure, as well as allow for basic metadata changes, such as modifications to the permissions of files.   Security: Support security applications are supported for users who have additional security needs, such as antivirus or data loss prevention. The API actions, along with AWS CloudTrail, allow these applications to detect when changes occur in Amazon WorkDocs. Then, the application can take the necessary actions and replace the target file. If the target file violates the policy, the application can also choose to email the user.   eDiscovery/Analytics: General administrative applications are supported, such as eDiscovery and analytics. These applications can choose to mimic or record the actions in an Amazon WorkDocs site, along with AWS CloudTrail, to replicate data for eDiscovery, backup, or analytical applications.   All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of IAM users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the Amazon WorkDocs site, the IAM user gains full administrative visibility into the entire Amazon WorkDocs site (or as set in the IAM policy). This includes, but is not limited to, the ability to modify file permissions and upload any file to any user. This allows developers to perform the three use cases above, as well as give users the ability to grant access on a selective basis using the IAM model.  The pricing for Amazon WorkDocs APIs varies depending on the API call type for these actions:    READ  (Get*)     WRITE (Activate*, Add*, Create*, Deactivate*, Initiate*, Update*)     LIST (Describe*)     DELETE*, CANCEL    For information about Amazon WorkDocs API pricing, see Amazon WorkDocs Pricing.
public struct WorkDocs: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the WorkDocs client
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
            service: "workdocs",
            serviceProtocol: .restjson,
            apiVersion: "2016-05-01",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-east-1": "workdocs-fips.us-east-1.amazonaws.com",
                    "us-west-2": "workdocs-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: WorkDocsErrorType.self,
            xmlNamespace: "https://aws.amazon.com/api/v1/",
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Aborts the upload of the specified document version that was previously initiated by InitiateDocumentVersionUpload. The client should make this call only when it no longer intends to upload the document version, or fails to do so.
    @discardableResult public func abortDocumentVersionUpload(_ input: AbortDocumentVersionUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "AbortDocumentVersionUpload", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Activates the specified user. Only active users can access Amazon WorkDocs.
    public func activateUser(_ input: ActivateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ActivateUserResponse> {
        return self.client.execute(operation: "ActivateUser", path: "/api/v1/users/{UserId}/activation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions.
    public func addResourcePermissions(_ input: AddResourcePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddResourcePermissionsResponse> {
        return self.client.execute(operation: "AddResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a new comment to the specified document version.
    public func createComment(_ input: CreateCommentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCommentResponse> {
        return self.client.execute(operation: "CreateComment", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more custom properties to the specified resource (a folder, document, or version).
    public func createCustomMetadata(_ input: CreateCustomMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomMetadataResponse> {
        return self.client.execute(operation: "CreateCustomMetadata", path: "/api/v1/resources/{ResourceId}/customMetadata", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a folder with the specified name and parent folder.
    public func createFolder(_ input: CreateFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFolderResponse> {
        return self.client.execute(operation: "CreateFolder", path: "/api/v1/folders", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified list of labels to the given resource (a document or folder)
    public func createLabels(_ input: CreateLabelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLabelsResponse> {
        return self.client.execute(operation: "CreateLabels", path: "/api/v1/resources/{ResourceId}/labels", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a confirmation message, and must confirm the subscription. For more information, see Setting up notifications for an IAM user or role in the Amazon WorkDocs Developer Guide.
    public func createNotificationSubscription(_ input: CreateNotificationSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNotificationSubscriptionResponse> {
        return self.client.execute(operation: "CreateNotificationSubscription", path: "/api/v1/organizations/{OrganizationId}/subscriptions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is "ACTIVE". New users can access Amazon WorkDocs.
    public func createUser(_ input: CreateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        return self.client.execute(operation: "CreateUser", path: "/api/v1/users", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deactivates the specified user, which revokes the user's access to Amazon WorkDocs.
    @discardableResult public func deactivateUser(_ input: DeactivateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeactivateUser", path: "/api/v1/users/{UserId}/activation", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified comment from the document version.
    @discardableResult public func deleteComment(_ input: DeleteCommentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteComment", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes custom metadata from the specified resource.
    public func deleteCustomMetadata(_ input: DeleteCustomMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomMetadataResponse> {
        return self.client.execute(operation: "DeleteCustomMetadata", path: "/api/v1/resources/{ResourceId}/customMetadata", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently deletes the specified document and its associated metadata.
    @discardableResult public func deleteDocument(_ input: DeleteDocumentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a version of an Amazon WorkDocs document. Use the DeletePriorVersions parameter to delete prior versions.
    @discardableResult public func deleteDocumentVersion(_ input: DeleteDocumentVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteDocumentVersion", path: "/api/v1/documentVersions/{DocumentId}/versions/{VersionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently deletes the specified folder and its contents.
    @discardableResult public func deleteFolder(_ input: DeleteFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteFolder", path: "/api/v1/folders/{FolderId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the contents of the specified folder.
    @discardableResult public func deleteFolderContents(_ input: DeleteFolderContentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteFolderContents", path: "/api/v1/folders/{FolderId}/contents", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified list of labels from a resource.
    public func deleteLabels(_ input: DeleteLabelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLabelsResponse> {
        return self.client.execute(operation: "DeleteLabels", path: "/api/v1/resources/{ResourceId}/labels", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified subscription from the specified organization.
    @discardableResult public func deleteNotificationSubscription(_ input: DeleteNotificationSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteNotificationSubscription", path: "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified user from a Simple AD or Microsoft AD directory.
    @discardableResult public func deleteUser(_ input: DeleteUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteUser", path: "/api/v1/users/{UserId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the user activities in a specified time period.
    public func describeActivities(_ input: DescribeActivitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeActivitiesResponse> {
        return self.client.execute(operation: "DescribeActivities", path: "/api/v1/activities", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all the comments for the specified document version.
    public func describeComments(_ input: DescribeCommentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCommentsResponse> {
        return self.client.execute(operation: "DescribeComments", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the document versions for the specified document. By default, only active versions are returned.
    public func describeDocumentVersions(_ input: DescribeDocumentVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDocumentVersionsResponse> {
        return self.client.execute(operation: "DescribeDocumentVersions", path: "/api/v1/documents/{DocumentId}/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
    public func describeFolderContents(_ input: DescribeFolderContentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFolderContentsResponse> {
        return self.client.execute(operation: "DescribeFolderContents", path: "/api/v1/folders/{FolderId}/contents", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the groups specified by the query. Groups are defined by the underlying Active Directory.
    public func describeGroups(_ input: DescribeGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupsResponse> {
        return self.client.execute(operation: "DescribeGroups", path: "/api/v1/groups", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the specified notification subscriptions.
    public func describeNotificationSubscriptions(_ input: DescribeNotificationSubscriptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotificationSubscriptionsResponse> {
        return self.client.execute(operation: "DescribeNotificationSubscriptions", path: "/api/v1/organizations/{OrganizationId}/subscriptions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the permissions of a specified resource.
    public func describeResourcePermissions(_ input: DescribeResourcePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcePermissionsResponse> {
        return self.client.execute(operation: "DescribeResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the current user's special folders; the RootFolder and the RecycleBin. RootFolder is the root of user's files and folders and RecycleBin is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide.
    public func describeRootFolders(_ input: DescribeRootFoldersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRootFoldersResponse> {
        return self.client.execute(operation: "DescribeRootFolders", path: "/api/v1/me/root", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
    public func describeUsers(_ input: DescribeUsersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsersResponse> {
        return self.client.execute(operation: "DescribeUsers", path: "/api/v1/users", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide.
    public func getCurrentUser(_ input: GetCurrentUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCurrentUserResponse> {
        return self.client.execute(operation: "GetCurrentUser", path: "/api/v1/me", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves details of a document.
    public func getDocument(_ input: GetDocumentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDocumentResponse> {
        return self.client.execute(operation: "GetDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the path information (the hierarchy from the root folder) for the requested document. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.
    public func getDocumentPath(_ input: GetDocumentPathRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDocumentPathResponse> {
        return self.client.execute(operation: "GetDocumentPath", path: "/api/v1/documents/{DocumentId}/path", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves version metadata for the specified document.
    public func getDocumentVersion(_ input: GetDocumentVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDocumentVersionResponse> {
        return self.client.execute(operation: "GetDocumentVersion", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the metadata of the specified folder.
    public func getFolder(_ input: GetFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFolderResponse> {
        return self.client.execute(operation: "GetFolder", path: "/api/v1/folders/{FolderId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the path information (the hierarchy from the root folder) for the specified folder. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.
    public func getFolderPath(_ input: GetFolderPathRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFolderPathResponse> {
        return self.client.execute(operation: "GetFolderPath", path: "/api/v1/folders/{FolderId}/path", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a collection of resources, including folders and documents. The only CollectionType supported is SHARED_WITH_ME.
    public func getResources(_ input: GetResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourcesResponse> {
        return self.client.execute(operation: "GetResources", path: "/api/v1/resources", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new document object and version object. The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call UpdateDocumentVersion. To cancel the document upload, call AbortDocumentVersionUpload.
    public func initiateDocumentVersionUpload(_ input: InitiateDocumentVersionUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InitiateDocumentVersionUploadResponse> {
        return self.client.execute(operation: "InitiateDocumentVersionUpload", path: "/api/v1/documents", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes all the permissions from the specified resource.
    @discardableResult public func removeAllResourcePermissions(_ input: RemoveAllResourcePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "RemoveAllResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the permission for the specified principal from the specified resource.
    @discardableResult public func removeResourcePermission(_ input: RemoveResourcePermissionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "RemoveResourcePermission", path: "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Recovers a deleted version of an Amazon WorkDocs document.
    @discardableResult public func restoreDocumentVersions(_ input: RestoreDocumentVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "RestoreDocumentVersions", path: "/api/v1/documentVersions/restore/{DocumentId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable.
    @discardableResult public func updateDocument(_ input: UpdateDocumentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the status of the document version to ACTIVE.  Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by InitiateDocumentVersionUpload.
    @discardableResult public func updateDocumentVersion(_ input: UpdateDocumentVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateDocumentVersion", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable.
    @discardableResult public func updateFolder(_ input: UpdateFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateFolder", path: "/api/v1/folders/{FolderId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site.
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserResponse> {
        return self.client.execute(operation: "UpdateUser", path: "/api/v1/users/{UserId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension WorkDocs {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: WorkDocs, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension WorkDocs {
    /// Retrieves the document versions for the specified document. By default, only active versions are returned.
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
    public func describeDocumentVersionsPaginator<Result>(
        _ input: DescribeDocumentVersionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeDocumentVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.describeDocumentVersions,
            inputKey: \DescribeDocumentVersionsRequest.marker,
            outputKey: \DescribeDocumentVersionsResponse.marker,
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
    public func describeDocumentVersionsPaginator(
        _ input: DescribeDocumentVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeDocumentVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.describeDocumentVersions,
            inputKey: \DescribeDocumentVersionsRequest.marker,
            outputKey: \DescribeDocumentVersionsResponse.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
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
    public func describeFolderContentsPaginator<Result>(
        _ input: DescribeFolderContentsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeFolderContentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.describeFolderContents,
            inputKey: \DescribeFolderContentsRequest.marker,
            outputKey: \DescribeFolderContentsResponse.marker,
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
    public func describeFolderContentsPaginator(
        _ input: DescribeFolderContentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeFolderContentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.describeFolderContents,
            inputKey: \DescribeFolderContentsRequest.marker,
            outputKey: \DescribeFolderContentsResponse.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
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
    public func describeUsersPaginator<Result>(
        _ input: DescribeUsersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeUsersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.describeUsers,
            inputKey: \DescribeUsersRequest.marker,
            outputKey: \DescribeUsersResponse.marker,
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
    public func describeUsersPaginator(
        _ input: DescribeUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeUsersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.describeUsers,
            inputKey: \DescribeUsersRequest.marker,
            outputKey: \DescribeUsersResponse.marker,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension WorkDocs.DescribeDocumentVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkDocs.DescribeDocumentVersionsRequest {
        return .init(
            authenticationToken: self.authenticationToken,
            documentId: self.documentId,
            fields: self.fields,
            include: self.include,
            limit: self.limit,
            marker: token
        )
    }
}

extension WorkDocs.DescribeFolderContentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkDocs.DescribeFolderContentsRequest {
        return .init(
            authenticationToken: self.authenticationToken,
            folderId: self.folderId,
            include: self.include,
            limit: self.limit,
            marker: token,
            order: self.order,
            sort: self.sort,
            type: self.type
        )
    }
}

extension WorkDocs.DescribeUsersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkDocs.DescribeUsersRequest {
        return .init(
            authenticationToken: self.authenticationToken,
            fields: self.fields,
            include: self.include,
            limit: self.limit,
            marker: token,
            order: self.order,
            organizationId: self.organizationId,
            query: self.query,
            sort: self.sort,
            userIds: self.userIds
        )
    }
}