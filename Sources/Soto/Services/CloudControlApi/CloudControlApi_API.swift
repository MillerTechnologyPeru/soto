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

/// Service object for interacting with AWS CloudControlApi service.
///
/// Use Amazon Web Services Cloud Control API to create, read, update, delete, and list (CRUD-L) your cloud resources that belong to a wide range of services--both Amazon Web Services and third-party. With the Cloud Control API standardized set of application programming interfaces (APIs), you can perform CRUD-L operations on any supported resources in your Amazon Web Services account. Using Cloud Control API, you won't have to generate code or scripts specific to each individual service responsible for those resources. For more information about Amazon Web Services Cloud Control API, see the Amazon Web Services Cloud Control API User Guide.
public struct CloudControlApi: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CloudControlApi client
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
            amzTarget: "CloudApiService",
            service: "cloudcontrolapi",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2021-09-30",
            endpoint: endpoint,
            errorType: CloudControlApiErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Cancels the specified resource operation request. For more information, see Canceling resource operation requests in the Amazon Web Services Cloud Control API User Guide. Only resource operations requests with a status of PENDING or IN_PROGRESS can be cancelled.
    public func cancelResourceRequest(_ input: CancelResourceRequestInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelResourceRequestOutput> {
        return self.client.execute(operation: "CancelResourceRequest", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the specified resource. For more information, see Creating a resource in the Amazon Web Services Cloud Control API User Guide. After you have initiated a resource creation request, you can monitor the progress of your request by calling GetResourceRequestStatus using the RequestToken of the ProgressEvent type returned by CreateResource.
    public func createResource(_ input: CreateResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResourceOutput> {
        return self.client.execute(operation: "CreateResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified resource. For details, see Deleting a resource in the Amazon Web Services Cloud Control API User Guide. After you have initiated a resource deletion request, you can monitor the progress of your request by calling GetResourceRequestStatus using the RequestToken of the ProgressEvent returned by DeleteResource.
    public func deleteResource(_ input: DeleteResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResourceOutput> {
        return self.client.execute(operation: "DeleteResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the current state of the specified resource. For details, see Reading a resource's current state. You can use this action to return information about an existing resource in your account and Amazon Web Services Region, whether or not those resources were provisioned using Cloud Control API.
    public func getResource(_ input: GetResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourceOutput> {
        return self.client.execute(operation: "GetResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the current status of a resource operation request. For more information, see Tracking the progress of resource operation requests in the Amazon Web Services Cloud Control API User Guide.
    public func getResourceRequestStatus(_ input: GetResourceRequestStatusInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourceRequestStatusOutput> {
        return self.client.execute(operation: "GetResourceRequestStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns existing resource operation requests. This includes requests of all status types. For more information, see Listing active resource operation requests in the Amazon Web Services Cloud Control API User Guide.  Resource operation requests expire after seven days.
    public func listResourceRequests(_ input: ListResourceRequestsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourceRequestsOutput> {
        return self.client.execute(operation: "ListResourceRequests", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the specified resources. For more information, see Discovering resources in the Amazon Web Services Cloud Control API User Guide. You can use this action to return information about existing resources in your account and Amazon Web Services Region, whether or not those resources were provisioned using Cloud Control API.
    public func listResources(_ input: ListResourcesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourcesOutput> {
        return self.client.execute(operation: "ListResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified property values in the resource. You specify your resource property updates as a list of patch operations contained in a JSON patch document that adheres to the  RFC 6902 - JavaScript Object Notation (JSON) Patch  standard. For details on how Cloud Control API performs resource update operations, see Updating a resource in the Amazon Web Services Cloud Control API User Guide. After you have initiated a resource update request, you can monitor the progress of your request by calling GetResourceRequestStatus using the RequestToken of the ProgressEvent returned by UpdateResource. For more information about the properties of a specific resource, refer to the related topic for the resource in the Resource and property types reference in the Amazon Web Services CloudFormation Users Guide.
    public func updateResource(_ input: UpdateResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateResourceOutput> {
        return self.client.execute(operation: "UpdateResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension CloudControlApi {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CloudControlApi, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
