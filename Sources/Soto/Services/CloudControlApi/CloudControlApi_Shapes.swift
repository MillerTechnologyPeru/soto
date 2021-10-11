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

import Foundation
import SotoCore

extension CloudControlApi {
    // MARK: Enums

    public enum HandlerErrorCode: String, CustomStringConvertible, Codable {
        case accessdenied = "AccessDenied"
        case alreadyexists = "AlreadyExists"
        case generalserviceexception = "GeneralServiceException"
        case internalfailure = "InternalFailure"
        case invalidcredentials = "InvalidCredentials"
        case invalidrequest = "InvalidRequest"
        case networkfailure = "NetworkFailure"
        case notfound = "NotFound"
        case notstabilized = "NotStabilized"
        case notupdatable = "NotUpdatable"
        case resourceconflict = "ResourceConflict"
        case serviceinternalerror = "ServiceInternalError"
        case servicelimitexceeded = "ServiceLimitExceeded"
        case servicetimeout = "ServiceTimeout"
        case throttling = "Throttling"
        public var description: String { return self.rawValue }
    }

    public enum Operation: String, CustomStringConvertible, Codable {
        case create = "CREATE"
        case delete = "DELETE"
        case update = "UPDATE"
        public var description: String { return self.rawValue }
    }

    public enum OperationStatus: String, CustomStringConvertible, Codable {
        case cancelComplete = "CANCEL_COMPLETE"
        case cancelInProgress = "CANCEL_IN_PROGRESS"
        case failed = "FAILED"
        case inProgress = "IN_PROGRESS"
        case pending = "PENDING"
        case success = "SUCCESS"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CancelResourceRequestInput: AWSEncodableShape {
        /// The RequestToken of the ProgressEvent object returned by the resource operation request.
        public let requestToken: String

        public init(requestToken: String) {
            self.requestToken = requestToken
        }

        public func validate(name: String) throws {
            try self.validate(self.requestToken, name: "requestToken", parent: name, max: 128)
            try self.validate(self.requestToken, name: "requestToken", parent: name, min: 1)
            try self.validate(self.requestToken, name: "requestToken", parent: name, pattern: "[-A-Za-z0-9+/=]+")
        }

        private enum CodingKeys: String, CodingKey {
            case requestToken = "RequestToken"
        }
    }

    public struct CancelResourceRequestOutput: AWSDecodableShape {
        public let progressEvent: ProgressEvent?

        public init(progressEvent: ProgressEvent? = nil) {
            self.progressEvent = progressEvent
        }

        private enum CodingKeys: String, CodingKey {
            case progressEvent = "ProgressEvent"
        }
    }

    public struct CreateResourceInput: AWSEncodableShape {
        /// A unique identifier to ensure the idempotency of the resource request. As a best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can accurately distinguish between request retries and new resource requests. You might retry a resource request to ensure that it was successfully received. A client token is valid for 36 hours once used. After that, a resource request with the same client token is treated as a new request. If you do not specify a client token, one is generated for inclusion in the request. For more information, see Ensuring resource operation requests are unique in the Amazon Web Services Cloud Control API User Guide.
        public let clientToken: String?
        /// Structured data format representing the desired state of the resource, consisting of that resource's properties and their desired values.   Cloud Control API currently supports JSON as a structured data format.  Specify the desired state as one of the following:   A JSON blob   A local path containing the desired state in JSON data format   For more information, see Composing the desired state of the resource in the Amazon Web Services Cloud Control API User Guide. For more information about the properties of a specific resource, refer to the related topic for the resource in the Resource and property types reference in the Amazon Web Services CloudFormation Users Guide.
        public let desiredState: String
        /// The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the  handlers  section of the resource type definition schema. If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials. For more information, see Specifying credentials in the Amazon Web Services Cloud Control API User Guide.
        public let roleArn: String?
        /// The name of the resource type.
        public let typeName: String
        /// For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.
        public let typeVersionId: String?

        public init(clientToken: String? = CreateResourceInput.idempotencyToken(), desiredState: String, roleArn: String? = nil, typeName: String, typeVersionId: String? = nil) {
            self.clientToken = clientToken
            self.desiredState = desiredState
            self.roleArn = roleArn
            self.typeName = typeName
            self.typeVersionId = typeVersionId
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 128)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "[-A-Za-z0-9+/=]+")
            try self.validate(self.desiredState, name: "desiredState", parent: name, max: 16384)
            try self.validate(self.desiredState, name: "desiredState", parent: name, min: 1)
            try self.validate(self.desiredState, name: "desiredState", parent: name, pattern: "(.|\\s)*")
            try self.validate(self.roleArn, name: "roleArn", parent: name, max: 2048)
            try self.validate(self.roleArn, name: "roleArn", parent: name, min: 20)
            try self.validate(self.roleArn, name: "roleArn", parent: name, pattern: "arn:.+:iam::[0-9]{12}:role/.+")
            try self.validate(self.typeName, name: "typeName", parent: name, max: 196)
            try self.validate(self.typeName, name: "typeName", parent: name, min: 10)
            try self.validate(self.typeName, name: "typeName", parent: name, pattern: "[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}")
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, max: 128)
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, min: 1)
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, pattern: "[A-Za-z0-9-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case desiredState = "DesiredState"
            case roleArn = "RoleArn"
            case typeName = "TypeName"
            case typeVersionId = "TypeVersionId"
        }
    }

    public struct CreateResourceOutput: AWSDecodableShape {
        /// Represents the current status of the resource creation request. After you have initiated a resource creation request, you can monitor the progress of your request by calling GetResourceRequestStatus using the RequestToken of the ProgressEvent returned by CreateResource.
        public let progressEvent: ProgressEvent?

        public init(progressEvent: ProgressEvent? = nil) {
            self.progressEvent = progressEvent
        }

        private enum CodingKeys: String, CodingKey {
            case progressEvent = "ProgressEvent"
        }
    }

    public struct DeleteResourceInput: AWSEncodableShape {
        /// A unique identifier to ensure the idempotency of the resource request. As a best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can accurately distinguish between request retries and new resource requests. You might retry a resource request to ensure that it was successfully received. A client token is valid for 36 hours once used. After that, a resource request with the same client token is treated as a new request. If you do not specify a client token, one is generated for inclusion in the request. For more information, see Ensuring resource operation requests are unique in the Amazon Web Services Cloud Control API User Guide.
        public let clientToken: String?
        /// The identifier for the resource. You can specify the primary identifier, or any secondary identifier defined for the resource type in its resource schema. You can only specify one identifier. Primary identifiers can be specified as a string or JSON; secondary identifiers must be specified as JSON. For compound primary identifiers (that is, one that consists of multiple resource properties strung together), to specify the primary identifier as a string, list the property values in the order they are specified in the primary identifier definition, separated by |.  For more information, see Identifying resources in the Amazon Web Services Cloud Control API User Guide.
        public let identifier: String
        /// The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the  handlers  section of the resource type definition schema. If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials. For more information, see Specifying credentials in the Amazon Web Services Cloud Control API User Guide.
        public let roleArn: String?
        /// The name of the resource type.
        public let typeName: String
        /// For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.
        public let typeVersionId: String?

        public init(clientToken: String? = DeleteResourceInput.idempotencyToken(), identifier: String, roleArn: String? = nil, typeName: String, typeVersionId: String? = nil) {
            self.clientToken = clientToken
            self.identifier = identifier
            self.roleArn = roleArn
            self.typeName = typeName
            self.typeVersionId = typeVersionId
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 128)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "[-A-Za-z0-9+/=]+")
            try self.validate(self.identifier, name: "identifier", parent: name, max: 1024)
            try self.validate(self.identifier, name: "identifier", parent: name, min: 1)
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: ".+")
            try self.validate(self.roleArn, name: "roleArn", parent: name, max: 2048)
            try self.validate(self.roleArn, name: "roleArn", parent: name, min: 20)
            try self.validate(self.roleArn, name: "roleArn", parent: name, pattern: "arn:.+:iam::[0-9]{12}:role/.+")
            try self.validate(self.typeName, name: "typeName", parent: name, max: 196)
            try self.validate(self.typeName, name: "typeName", parent: name, min: 10)
            try self.validate(self.typeName, name: "typeName", parent: name, pattern: "[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}")
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, max: 128)
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, min: 1)
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, pattern: "[A-Za-z0-9-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case identifier = "Identifier"
            case roleArn = "RoleArn"
            case typeName = "TypeName"
            case typeVersionId = "TypeVersionId"
        }
    }

    public struct DeleteResourceOutput: AWSDecodableShape {
        /// Represents the current status of the resource deletion request. After you have initiated a resource deletion request, you can monitor the progress of your request by calling GetResourceRequestStatus using the RequestToken of the ProgressEvent returned by DeleteResource.
        public let progressEvent: ProgressEvent?

        public init(progressEvent: ProgressEvent? = nil) {
            self.progressEvent = progressEvent
        }

        private enum CodingKeys: String, CodingKey {
            case progressEvent = "ProgressEvent"
        }
    }

    public struct GetResourceInput: AWSEncodableShape {
        /// The identifier for the resource. You can specify the primary identifier, or any secondary identifier defined for the resource type in its resource schema. You can only specify one identifier. Primary identifiers can be specified as a string or JSON; secondary identifiers must be specified as JSON. For compound primary identifiers (that is, one that consists of multiple resource properties strung together), to specify the primary identifier as a string, list the property values in the order they are specified in the primary identifier definition, separated by |.  For more information, see Identifying resources in the Amazon Web Services Cloud Control API User Guide.
        public let identifier: String
        /// The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the  handlers  section of the resource type definition schema. If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials. For more information, see Specifying credentials in the Amazon Web Services Cloud Control API User Guide.
        public let roleArn: String?
        /// The name of the resource type.
        public let typeName: String
        /// For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.
        public let typeVersionId: String?

        public init(identifier: String, roleArn: String? = nil, typeName: String, typeVersionId: String? = nil) {
            self.identifier = identifier
            self.roleArn = roleArn
            self.typeName = typeName
            self.typeVersionId = typeVersionId
        }

        public func validate(name: String) throws {
            try self.validate(self.identifier, name: "identifier", parent: name, max: 1024)
            try self.validate(self.identifier, name: "identifier", parent: name, min: 1)
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: ".+")
            try self.validate(self.roleArn, name: "roleArn", parent: name, max: 2048)
            try self.validate(self.roleArn, name: "roleArn", parent: name, min: 20)
            try self.validate(self.roleArn, name: "roleArn", parent: name, pattern: "arn:.+:iam::[0-9]{12}:role/.+")
            try self.validate(self.typeName, name: "typeName", parent: name, max: 196)
            try self.validate(self.typeName, name: "typeName", parent: name, min: 10)
            try self.validate(self.typeName, name: "typeName", parent: name, pattern: "[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}")
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, max: 128)
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, min: 1)
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, pattern: "[A-Za-z0-9-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case identifier = "Identifier"
            case roleArn = "RoleArn"
            case typeName = "TypeName"
            case typeVersionId = "TypeVersionId"
        }
    }

    public struct GetResourceOutput: AWSDecodableShape {
        public let resourceDescription: ResourceDescription?
        /// The name of the resource type.
        public let typeName: String?

        public init(resourceDescription: ResourceDescription? = nil, typeName: String? = nil) {
            self.resourceDescription = resourceDescription
            self.typeName = typeName
        }

        private enum CodingKeys: String, CodingKey {
            case resourceDescription = "ResourceDescription"
            case typeName = "TypeName"
        }
    }

    public struct GetResourceRequestStatusInput: AWSEncodableShape {
        /// A unique token used to track the progress of the resource operation request. Request tokens are included in the ProgressEvent type returned by a resource operation request.
        public let requestToken: String

        public init(requestToken: String) {
            self.requestToken = requestToken
        }

        public func validate(name: String) throws {
            try self.validate(self.requestToken, name: "requestToken", parent: name, max: 128)
            try self.validate(self.requestToken, name: "requestToken", parent: name, min: 1)
            try self.validate(self.requestToken, name: "requestToken", parent: name, pattern: "[-A-Za-z0-9+/=]+")
        }

        private enum CodingKeys: String, CodingKey {
            case requestToken = "RequestToken"
        }
    }

    public struct GetResourceRequestStatusOutput: AWSDecodableShape {
        /// Represents the current status of the resource operation request.
        public let progressEvent: ProgressEvent?

        public init(progressEvent: ProgressEvent? = nil) {
            self.progressEvent = progressEvent
        }

        private enum CodingKeys: String, CodingKey {
            case progressEvent = "ProgressEvent"
        }
    }

    public struct ListResourceRequestsInput: AWSEncodableShape {
        /// The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a NextToken value that you can assign to the NextToken request parameter to get the next set of results. The default is 20.
        public let maxResults: Int?
        /// If the previous paginated request didn't return all of the remaining results, the response object's NextToken parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's NextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null.
        public let nextToken: String?
        /// The filter criteria to apply to the requests returned.
        public let resourceRequestStatusFilter: ResourceRequestStatusFilter?

        public init(maxResults: Int? = nil, nextToken: String? = nil, resourceRequestStatusFilter: ResourceRequestStatusFilter? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.resourceRequestStatusFilter = resourceRequestStatusFilter
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 2048)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "[-A-Za-z0-9+/=]+")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case resourceRequestStatusFilter = "ResourceRequestStatusFilter"
        }
    }

    public struct ListResourceRequestsOutput: AWSDecodableShape {
        /// If the request doesn't return all of the remaining results, NextToken is set to a token. To retrieve the next set of results, call ListResources again and assign that token to the request object's NextToken parameter. If the request returns all results, NextToken is set to null.
        public let nextToken: String?
        /// The requests that match the specified filter criteria.
        public let resourceRequestStatusSummaries: [ProgressEvent]?

        public init(nextToken: String? = nil, resourceRequestStatusSummaries: [ProgressEvent]? = nil) {
            self.nextToken = nextToken
            self.resourceRequestStatusSummaries = resourceRequestStatusSummaries
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case resourceRequestStatusSummaries = "ResourceRequestStatusSummaries"
        }
    }

    public struct ListResourcesInput: AWSEncodableShape {
        /// The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a NextToken value that you can assign to the NextToken request parameter to get the next set of results. The default is 20.
        public let maxResults: Int?
        /// If the previous paginated request didn't return all of the remaining results, the response object's NextToken parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's NextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null.
        public let nextToken: String?
        /// The resource model to use to select the resources to return.
        public let resourceModel: String?
        /// The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the  handlers  section of the resource type definition schema. If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials. For more information, see Specifying credentials in the Amazon Web Services Cloud Control API User Guide.
        public let roleArn: String?
        /// The name of the resource type.
        public let typeName: String
        /// For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.
        public let typeVersionId: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil, resourceModel: String? = nil, roleArn: String? = nil, typeName: String, typeVersionId: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.resourceModel = resourceModel
            self.roleArn = roleArn
            self.typeName = typeName
            self.typeVersionId = typeVersionId
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 2048)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: ".+")
            try self.validate(self.resourceModel, name: "resourceModel", parent: name, max: 16384)
            try self.validate(self.resourceModel, name: "resourceModel", parent: name, min: 1)
            try self.validate(self.resourceModel, name: "resourceModel", parent: name, pattern: "(.|\\s)*")
            try self.validate(self.roleArn, name: "roleArn", parent: name, max: 2048)
            try self.validate(self.roleArn, name: "roleArn", parent: name, min: 20)
            try self.validate(self.roleArn, name: "roleArn", parent: name, pattern: "arn:.+:iam::[0-9]{12}:role/.+")
            try self.validate(self.typeName, name: "typeName", parent: name, max: 196)
            try self.validate(self.typeName, name: "typeName", parent: name, min: 10)
            try self.validate(self.typeName, name: "typeName", parent: name, pattern: "[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}")
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, max: 128)
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, min: 1)
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, pattern: "[A-Za-z0-9-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case resourceModel = "ResourceModel"
            case roleArn = "RoleArn"
            case typeName = "TypeName"
            case typeVersionId = "TypeVersionId"
        }
    }

    public struct ListResourcesOutput: AWSDecodableShape {
        /// If the request doesn't return all of the remaining results, NextToken is set to a token. To retrieve the next set of results, call ListResources again and assign that token to the request object's NextToken parameter. If the request returns all results, NextToken is set to null.
        public let nextToken: String?
        /// Information about the specified resources, including primary identifier and resource model.
        public let resourceDescriptions: [ResourceDescription]?
        /// The name of the resource type.
        public let typeName: String?

        public init(nextToken: String? = nil, resourceDescriptions: [ResourceDescription]? = nil, typeName: String? = nil) {
            self.nextToken = nextToken
            self.resourceDescriptions = resourceDescriptions
            self.typeName = typeName
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case resourceDescriptions = "ResourceDescriptions"
            case typeName = "TypeName"
        }
    }

    public struct ProgressEvent: AWSDecodableShape {
        /// For requests with a status of FAILED, the associated error code. For error code definitions, see Handler error codes in the CloudFormation Command Line Interface User Guide for Extension Development.
        public let errorCode: HandlerErrorCode?
        /// When the resource operation request was initiated.
        public let eventTime: Date?
        /// The primary identifier for the resource.  In some cases, the resource identifier may be available before the resource operation has reached a status of SUCCESS.
        public let identifier: String?
        /// The resource operation type.
        public let operation: Operation?
        /// The current status of the resource operation request.    PENDING: The resource operation has not yet started.    IN_PROGRESS: The resource operation is currently in progress.    SUCCESS: The resource operation has successfully completed.    FAILED: The resource operation has failed. Refer to the error code and status message for more information.    CANCEL_IN_PROGRESS: The resource operation is in the process of being canceled.    CANCEL_COMPLETE: The resource operation has been canceled.
        public let operationStatus: OperationStatus?
        /// The unique token representing this resource operation request. Use the RequestToken with GetResourceRequestStatus to return the current status of a resource operation request.
        public let requestToken: String?
        /// A JSON string containing the resource model, consisting of each resource property and its current value.
        public let resourceModel: String?
        /// When to next request the status of this resource operation request.
        public let retryAfter: Date?
        /// Any message explaining the current status.
        public let statusMessage: String?
        /// The name of the resource type used in the operation.
        public let typeName: String?

        public init(errorCode: HandlerErrorCode? = nil, eventTime: Date? = nil, identifier: String? = nil, operation: Operation? = nil, operationStatus: OperationStatus? = nil, requestToken: String? = nil, resourceModel: String? = nil, retryAfter: Date? = nil, statusMessage: String? = nil, typeName: String? = nil) {
            self.errorCode = errorCode
            self.eventTime = eventTime
            self.identifier = identifier
            self.operation = operation
            self.operationStatus = operationStatus
            self.requestToken = requestToken
            self.resourceModel = resourceModel
            self.retryAfter = retryAfter
            self.statusMessage = statusMessage
            self.typeName = typeName
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case eventTime = "EventTime"
            case identifier = "Identifier"
            case operation = "Operation"
            case operationStatus = "OperationStatus"
            case requestToken = "RequestToken"
            case resourceModel = "ResourceModel"
            case retryAfter = "RetryAfter"
            case statusMessage = "StatusMessage"
            case typeName = "TypeName"
        }
    }

    public struct ResourceDescription: AWSDecodableShape {
        /// The primary identifier for the resource. For more information, see Identifying resources in the Amazon Web Services Cloud Control API User Guide.
        public let identifier: String?
        /// A list of the resource properties and their current values.
        public let properties: String?

        public init(identifier: String? = nil, properties: String? = nil) {
            self.identifier = identifier
            self.properties = properties
        }

        private enum CodingKeys: String, CodingKey {
            case identifier = "Identifier"
            case properties = "Properties"
        }
    }

    public struct ResourceRequestStatusFilter: AWSEncodableShape {
        /// The operation types to include in the filter.
        public let operations: [Operation]?
        /// The operation statuses to include in the filter.    PENDING: The operation has been requested, but not yet initiated.    IN_PROGRESS: The operation is currently in progress.    SUCCESS: The operation has successfully completed.    FAILED: The operation has failed.    CANCEL_IN_PROGRESS: The operation is currently in the process of being canceled.    CANCEL_COMPLETE: The operation has been canceled.
        public let operationStatuses: [OperationStatus]?

        public init(operations: [Operation]? = nil, operationStatuses: [OperationStatus]? = nil) {
            self.operations = operations
            self.operationStatuses = operationStatuses
        }

        private enum CodingKeys: String, CodingKey {
            case operations = "Operations"
            case operationStatuses = "OperationStatuses"
        }
    }

    public struct UpdateResourceInput: AWSEncodableShape {
        /// A unique identifier to ensure the idempotency of the resource request. As a best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can accurately distinguish between request retries and new resource requests. You might retry a resource request to ensure that it was successfully received. A client token is valid for 36 hours once used. After that, a resource request with the same client token is treated as a new request. If you do not specify a client token, one is generated for inclusion in the request. For more information, see Ensuring resource operation requests are unique in the Amazon Web Services Cloud Control API User Guide.
        public let clientToken: String?
        /// The identifier for the resource. You can specify the primary identifier, or any secondary identifier defined for the resource type in its resource schema. You can only specify one identifier. Primary identifiers can be specified as a string or JSON; secondary identifiers must be specified as JSON. For compound primary identifiers (that is, one that consists of multiple resource properties strung together), to specify the primary identifier as a string, list the property values in the order they are specified in the primary identifier definition, separated by |.  For more information, see Identifying resources in the Amazon Web Services Cloud Control API User Guide.
        public let identifier: String
        /// A JavaScript Object Notation (JSON) document listing the patch operations that represent the updates to apply to the current resource properties. For details, see Composing the patch document in the Amazon Web Services Cloud Control API User Guide.
        public let patchDocument: String
        /// The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the  handlers  section of the resource type definition schema. If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials. For more information, see Specifying credentials in the Amazon Web Services Cloud Control API User Guide.
        public let roleArn: String?
        /// The name of the resource type.
        public let typeName: String
        /// For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.
        public let typeVersionId: String?

        public init(clientToken: String? = UpdateResourceInput.idempotencyToken(), identifier: String, patchDocument: String, roleArn: String? = nil, typeName: String, typeVersionId: String? = nil) {
            self.clientToken = clientToken
            self.identifier = identifier
            self.patchDocument = patchDocument
            self.roleArn = roleArn
            self.typeName = typeName
            self.typeVersionId = typeVersionId
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 128)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "[-A-Za-z0-9+/=]+")
            try self.validate(self.identifier, name: "identifier", parent: name, max: 1024)
            try self.validate(self.identifier, name: "identifier", parent: name, min: 1)
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: ".+")
            try self.validate(self.patchDocument, name: "patchDocument", parent: name, max: 65536)
            try self.validate(self.patchDocument, name: "patchDocument", parent: name, min: 1)
            try self.validate(self.patchDocument, name: "patchDocument", parent: name, pattern: "(.|\\s)*")
            try self.validate(self.roleArn, name: "roleArn", parent: name, max: 2048)
            try self.validate(self.roleArn, name: "roleArn", parent: name, min: 20)
            try self.validate(self.roleArn, name: "roleArn", parent: name, pattern: "arn:.+:iam::[0-9]{12}:role/.+")
            try self.validate(self.typeName, name: "typeName", parent: name, max: 196)
            try self.validate(self.typeName, name: "typeName", parent: name, min: 10)
            try self.validate(self.typeName, name: "typeName", parent: name, pattern: "[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}")
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, max: 128)
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, min: 1)
            try self.validate(self.typeVersionId, name: "typeVersionId", parent: name, pattern: "[A-Za-z0-9-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case identifier = "Identifier"
            case patchDocument = "PatchDocument"
            case roleArn = "RoleArn"
            case typeName = "TypeName"
            case typeVersionId = "TypeVersionId"
        }
    }

    public struct UpdateResourceOutput: AWSDecodableShape {
        /// Represents the current status of the resource update request. Use the RequestToken of the ProgressEvent with GetResourceRequestStatus to return the current status of a resource operation request.
        public let progressEvent: ProgressEvent?

        public init(progressEvent: ProgressEvent? = nil) {
            self.progressEvent = progressEvent
        }

        private enum CodingKeys: String, CodingKey {
            case progressEvent = "ProgressEvent"
        }
    }
}
