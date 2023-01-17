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

/// Service object for interacting with AWS KafkaConnect service.
public struct KafkaConnect: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the KafkaConnect client
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
            service: "kafkaconnect",
            serviceProtocol: .restjson,
            apiVersion: "2021-09-14",
            endpoint: endpoint,
            errorType: KafkaConnectErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a connector using the specified properties.
    public func createConnector(_ input: CreateConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConnectorResponse> {
        return self.client.execute(operation: "CreateConnector", path: "/v1/connectors", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a custom plugin using the specified properties.
    public func createCustomPlugin(_ input: CreateCustomPluginRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomPluginResponse> {
        return self.client.execute(operation: "CreateCustomPlugin", path: "/v1/custom-plugins", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a worker configuration using the specified properties.
    public func createWorkerConfiguration(_ input: CreateWorkerConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkerConfigurationResponse> {
        return self.client.execute(operation: "CreateWorkerConfiguration", path: "/v1/worker-configurations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified connector.
    public func deleteConnector(_ input: DeleteConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConnectorResponse> {
        return self.client.execute(operation: "DeleteConnector", path: "/v1/connectors/{connectorArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a custom plugin.
    public func deleteCustomPlugin(_ input: DeleteCustomPluginRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomPluginResponse> {
        return self.client.execute(operation: "DeleteCustomPlugin", path: "/v1/custom-plugins/{customPluginArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns summary information about the connector.
    public func describeConnector(_ input: DescribeConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConnectorResponse> {
        return self.client.execute(operation: "DescribeConnector", path: "/v1/connectors/{connectorArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A summary description of the custom plugin.
    public func describeCustomPlugin(_ input: DescribeCustomPluginRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomPluginResponse> {
        return self.client.execute(operation: "DescribeCustomPlugin", path: "/v1/custom-plugins/{customPluginArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a worker configuration.
    public func describeWorkerConfiguration(_ input: DescribeWorkerConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkerConfigurationResponse> {
        return self.client.execute(operation: "DescribeWorkerConfiguration", path: "/v1/worker-configurations/{workerConfigurationArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the connectors in this account and Region. The list is limited to connectors whose name starts with the specified prefix. The response also includes a description of each of the listed connectors.
    public func listConnectors(_ input: ListConnectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConnectorsResponse> {
        return self.client.execute(operation: "ListConnectors", path: "/v1/connectors", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all of the custom plugins in this account and Region.
    public func listCustomPlugins(_ input: ListCustomPluginsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCustomPluginsResponse> {
        return self.client.execute(operation: "ListCustomPlugins", path: "/v1/custom-plugins", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all of the worker configurations in this account and Region.
    public func listWorkerConfigurations(_ input: ListWorkerConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorkerConfigurationsResponse> {
        return self.client.execute(operation: "ListWorkerConfigurations", path: "/v1/worker-configurations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified connector.
    public func updateConnector(_ input: UpdateConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateConnectorResponse> {
        return self.client.execute(operation: "UpdateConnector", path: "/v1/connectors/{connectorArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension KafkaConnect {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: KafkaConnect, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension KafkaConnect {
    /// Returns a list of all the connectors in this account and Region. The list is limited to connectors whose name starts with the specified prefix. The response also includes a description of each of the listed connectors.
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
    public func listConnectorsPaginator<Result>(
        _ input: ListConnectorsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListConnectorsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listConnectors,
            inputKey: \ListConnectorsRequest.nextToken,
            outputKey: \ListConnectorsResponse.nextToken,
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
    public func listConnectorsPaginator(
        _ input: ListConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListConnectorsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listConnectors,
            inputKey: \ListConnectorsRequest.nextToken,
            outputKey: \ListConnectorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a list of all of the custom plugins in this account and Region.
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
    public func listCustomPluginsPaginator<Result>(
        _ input: ListCustomPluginsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCustomPluginsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listCustomPlugins,
            inputKey: \ListCustomPluginsRequest.nextToken,
            outputKey: \ListCustomPluginsResponse.nextToken,
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
    public func listCustomPluginsPaginator(
        _ input: ListCustomPluginsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCustomPluginsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listCustomPlugins,
            inputKey: \ListCustomPluginsRequest.nextToken,
            outputKey: \ListCustomPluginsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a list of all of the worker configurations in this account and Region.
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
    public func listWorkerConfigurationsPaginator<Result>(
        _ input: ListWorkerConfigurationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListWorkerConfigurationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listWorkerConfigurations,
            inputKey: \ListWorkerConfigurationsRequest.nextToken,
            outputKey: \ListWorkerConfigurationsResponse.nextToken,
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
    public func listWorkerConfigurationsPaginator(
        _ input: ListWorkerConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListWorkerConfigurationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listWorkerConfigurations,
            inputKey: \ListWorkerConfigurationsRequest.nextToken,
            outputKey: \ListWorkerConfigurationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension KafkaConnect.ListConnectorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KafkaConnect.ListConnectorsRequest {
        return .init(
            connectorNamePrefix: self.connectorNamePrefix,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension KafkaConnect.ListCustomPluginsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KafkaConnect.ListCustomPluginsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension KafkaConnect.ListWorkerConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KafkaConnect.ListWorkerConfigurationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}