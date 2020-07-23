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
Client object for interacting with AWS WorkDocs service.

The WorkDocs API is designed for the following use cases:   File Migration: File migration applications are supported for users who want to migrate their files from an on-premises or off-premises file system or service. Users can insert files into a user directory structure, as well as allow for basic metadata changes, such as modifications to the permissions of files.   Security: Support security applications are supported for users who have additional security needs, such as antivirus or data loss prevention. The API actions, along with AWS CloudTrail, allow these applications to detect when changes occur in Amazon WorkDocs. Then, the application can take the necessary actions and replace the target file. If the target file violates the policy, the application can also choose to email the user.   eDiscovery/Analytics: General administrative applications are supported, such as eDiscovery and analytics. These applications can choose to mimic or record the actions in an Amazon WorkDocs site, along with AWS CloudTrail, to replicate data for eDiscovery, backup, or analytical applications.   All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of IAM users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the Amazon WorkDocs site, the IAM user gains full administrative visibility into the entire Amazon WorkDocs site (or as set in the IAM policy). This includes, but is not limited to, the ability to modify file permissions and upload any file to any user. This allows developers to perform the three use cases above, as well as give users the ability to grant access on a selective basis using the IAM model.
*/
public struct WorkDocs {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the WorkDocs client
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
            service: "workdocs",
            serviceProtocol: .restjson,
            apiVersion: "2016-05-01",
            endpoint: endpoint,
            possibleErrorTypes: [WorkDocsErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Aborts the upload of the specified document version that was previously initiated by InitiateDocumentVersionUpload. The client should make this call only when it no longer intends to upload the document version, or fails to do so.
    @discardableResult public func abortDocumentVersionUpload(_ input: AbortDocumentVersionUploadRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "AbortDocumentVersionUpload", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Activates the specified user. Only active users can access Amazon WorkDocs.
    public func activateUser(_ input: ActivateUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ActivateUserResponse> {
        return client.execute(operation: "ActivateUser", path: "/api/v1/users/{UserId}/activation", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions.
    public func addResourcePermissions(_ input: AddResourcePermissionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AddResourcePermissionsResponse> {
        return client.execute(operation: "AddResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds a new comment to the specified document version.
    public func createComment(_ input: CreateCommentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateCommentResponse> {
        return client.execute(operation: "CreateComment", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds one or more custom properties to the specified resource (a folder, document, or version).
    public func createCustomMetadata(_ input: CreateCustomMetadataRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateCustomMetadataResponse> {
        return client.execute(operation: "CreateCustomMetadata", path: "/api/v1/resources/{ResourceId}/customMetadata", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a folder with the specified name and parent folder.
    public func createFolder(_ input: CreateFolderRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateFolderResponse> {
        return client.execute(operation: "CreateFolder", path: "/api/v1/folders", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds the specified list of labels to the given resource (a document or folder)
    public func createLabels(_ input: CreateLabelsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateLabelsResponse> {
        return client.execute(operation: "CreateLabels", path: "/api/v1/resources/{ResourceId}/labels", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a confirmation message, and must confirm the subscription. For more information, see Subscribe to Notifications in the Amazon WorkDocs Developer Guide.
    public func createNotificationSubscription(_ input: CreateNotificationSubscriptionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateNotificationSubscriptionResponse> {
        return client.execute(operation: "CreateNotificationSubscription", path: "/api/v1/organizations/{OrganizationId}/subscriptions", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is "ACTIVE". New users can access Amazon WorkDocs.
    public func createUser(_ input: CreateUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateUserResponse> {
        return client.execute(operation: "CreateUser", path: "/api/v1/users", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deactivates the specified user, which revokes the user's access to Amazon WorkDocs.
    @discardableResult public func deactivateUser(_ input: DeactivateUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeactivateUser", path: "/api/v1/users/{UserId}/activation", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified comment from the document version.
    @discardableResult public func deleteComment(_ input: DeleteCommentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteComment", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes custom metadata from the specified resource.
    public func deleteCustomMetadata(_ input: DeleteCustomMetadataRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteCustomMetadataResponse> {
        return client.execute(operation: "DeleteCustomMetadata", path: "/api/v1/resources/{ResourceId}/customMetadata", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Permanently deletes the specified document and its associated metadata.
    @discardableResult public func deleteDocument(_ input: DeleteDocumentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Permanently deletes the specified folder and its contents.
    @discardableResult public func deleteFolder(_ input: DeleteFolderRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteFolder", path: "/api/v1/folders/{FolderId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the contents of the specified folder.
    @discardableResult public func deleteFolderContents(_ input: DeleteFolderContentsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteFolderContents", path: "/api/v1/folders/{FolderId}/contents", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified list of labels from a resource.
    public func deleteLabels(_ input: DeleteLabelsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteLabelsResponse> {
        return client.execute(operation: "DeleteLabels", path: "/api/v1/resources/{ResourceId}/labels", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified subscription from the specified organization.
    @discardableResult public func deleteNotificationSubscription(_ input: DeleteNotificationSubscriptionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteNotificationSubscription", path: "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified user from a Simple AD or Microsoft AD directory.
    @discardableResult public func deleteUser(_ input: DeleteUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteUser", path: "/api/v1/users/{UserId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the user activities in a specified time period.
    public func describeActivities(_ input: DescribeActivitiesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeActivitiesResponse> {
        return client.execute(operation: "DescribeActivities", path: "/api/v1/activities", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  List all the comments for the specified document version.
    public func describeComments(_ input: DescribeCommentsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeCommentsResponse> {
        return client.execute(operation: "DescribeComments", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the document versions for the specified document. By default, only active versions are returned.
    public func describeDocumentVersions(_ input: DescribeDocumentVersionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeDocumentVersionsResponse> {
        return client.execute(operation: "DescribeDocumentVersions", path: "/api/v1/documents/{DocumentId}/versions", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
    public func describeFolderContents(_ input: DescribeFolderContentsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeFolderContentsResponse> {
        return client.execute(operation: "DescribeFolderContents", path: "/api/v1/folders/{FolderId}/contents", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the groups specified by the query. Groups are defined by the underlying Active Directory.
    public func describeGroups(_ input: DescribeGroupsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeGroupsResponse> {
        return client.execute(operation: "DescribeGroups", path: "/api/v1/groups", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the specified notification subscriptions.
    public func describeNotificationSubscriptions(_ input: DescribeNotificationSubscriptionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeNotificationSubscriptionsResponse> {
        return client.execute(operation: "DescribeNotificationSubscriptions", path: "/api/v1/organizations/{OrganizationId}/subscriptions", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the permissions of a specified resource.
    public func describeResourcePermissions(_ input: DescribeResourcePermissionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeResourcePermissionsResponse> {
        return client.execute(operation: "DescribeResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the current user's special folders; the RootFolder and the RecycleBin. RootFolder is the root of user's files and folders and RecycleBin is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide.
    public func describeRootFolders(_ input: DescribeRootFoldersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeRootFoldersResponse> {
        return client.execute(operation: "DescribeRootFolders", path: "/api/v1/me/root", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
    public func describeUsers(_ input: DescribeUsersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeUsersResponse> {
        return client.execute(operation: "DescribeUsers", path: "/api/v1/users", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide.
    public func getCurrentUser(_ input: GetCurrentUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetCurrentUserResponse> {
        return client.execute(operation: "GetCurrentUser", path: "/api/v1/me", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves details of a document.
    public func getDocument(_ input: GetDocumentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDocumentResponse> {
        return client.execute(operation: "GetDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the path information (the hierarchy from the root folder) for the requested document. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.
    public func getDocumentPath(_ input: GetDocumentPathRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDocumentPathResponse> {
        return client.execute(operation: "GetDocumentPath", path: "/api/v1/documents/{DocumentId}/path", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves version metadata for the specified document.
    public func getDocumentVersion(_ input: GetDocumentVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDocumentVersionResponse> {
        return client.execute(operation: "GetDocumentVersion", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the metadata of the specified folder.
    public func getFolder(_ input: GetFolderRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetFolderResponse> {
        return client.execute(operation: "GetFolder", path: "/api/v1/folders/{FolderId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the path information (the hierarchy from the root folder) for the specified folder. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.
    public func getFolderPath(_ input: GetFolderPathRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetFolderPathResponse> {
        return client.execute(operation: "GetFolderPath", path: "/api/v1/folders/{FolderId}/path", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a collection of resources, including folders and documents. The only CollectionType supported is SHARED_WITH_ME.
    public func getResources(_ input: GetResourcesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetResourcesResponse> {
        return client.execute(operation: "GetResources", path: "/api/v1/resources", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new document object and version object. The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call UpdateDocumentVersion. To cancel the document upload, call AbortDocumentVersionUpload.
    public func initiateDocumentVersionUpload(_ input: InitiateDocumentVersionUploadRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<InitiateDocumentVersionUploadResponse> {
        return client.execute(operation: "InitiateDocumentVersionUpload", path: "/api/v1/documents", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes all the permissions from the specified resource.
    @discardableResult public func removeAllResourcePermissions(_ input: RemoveAllResourcePermissionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "RemoveAllResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the permission for the specified principal from the specified resource.
    @discardableResult public func removeResourcePermission(_ input: RemoveResourcePermissionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "RemoveResourcePermission", path: "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable.
    @discardableResult public func updateDocument(_ input: UpdateDocumentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Changes the status of the document version to ACTIVE.  Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by InitiateDocumentVersionUpload. 
    @discardableResult public func updateDocumentVersion(_ input: UpdateDocumentVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateDocumentVersion", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable.
    @discardableResult public func updateFolder(_ input: UpdateFolderRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateFolder", path: "/api/v1/folders/{FolderId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site.
    public func updateUser(_ input: UpdateUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateUserResponse> {
        return client.execute(operation: "UpdateUser", path: "/api/v1/users/{UserId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
