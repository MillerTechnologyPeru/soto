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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Lambda {
    ///  Returns a list of aliases for a Lambda function.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAliasesPaginator(
        _ input: ListAliasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAliasesRequest, ListAliasesResponse> {
        return .init(
            input: input,
            command: listAliases,
            inputKey: \ListAliasesRequest.marker,
            outputKey: \ListAliasesResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of code signing configurations. A request returns up to 10,000 configurations per call. You can use the MaxItems parameter to return fewer configurations per call.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCodeSigningConfigsPaginator(
        _ input: ListCodeSigningConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCodeSigningConfigsRequest, ListCodeSigningConfigsResponse> {
        return .init(
            input: input,
            command: listCodeSigningConfigs,
            inputKey: \ListCodeSigningConfigsRequest.marker,
            outputKey: \ListCodeSigningConfigsResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists event source mappings. Specify an EventSourceArn to only show event source mappings for a single event source.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEventSourceMappingsPaginator(
        _ input: ListEventSourceMappingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEventSourceMappingsRequest, ListEventSourceMappingsResponse> {
        return .init(
            input: input,
            command: listEventSourceMappings,
            inputKey: \ListEventSourceMappingsRequest.marker,
            outputKey: \ListEventSourceMappingsResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of configurations for asynchronous invocation for a function. To configure options for asynchronous invocation, use PutFunctionEventInvokeConfig.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFunctionEventInvokeConfigsPaginator(
        _ input: ListFunctionEventInvokeConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFunctionEventInvokeConfigsRequest, ListFunctionEventInvokeConfigsResponse> {
        return .init(
            input: input,
            command: listFunctionEventInvokeConfigs,
            inputKey: \ListFunctionEventInvokeConfigsRequest.marker,
            outputKey: \ListFunctionEventInvokeConfigsResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of Lambda functions, with the version-specific configuration of each. Lambda returns up to 50 functions per call. Set FunctionVersion to ALL to include all published versions of each function in addition to the unpublished version.   The ListFunctions action returns a subset of the FunctionConfiguration fields. To get the additional fields (State, StateReasonCode, StateReason, LastUpdateStatus, LastUpdateStatusReason, LastUpdateStatusReasonCode) for a function or version, use GetFunction.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFunctionsPaginator(
        _ input: ListFunctionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFunctionsRequest, ListFunctionsResponse> {
        return .init(
            input: input,
            command: listFunctions,
            inputKey: \ListFunctionsRequest.marker,
            outputKey: \ListFunctionsResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the functions that use the specified code signing configuration. You can use this method prior to deleting a code signing configuration, to verify that no functions are using it.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFunctionsByCodeSigningConfigPaginator(
        _ input: ListFunctionsByCodeSigningConfigRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFunctionsByCodeSigningConfigRequest, ListFunctionsByCodeSigningConfigResponse> {
        return .init(
            input: input,
            command: listFunctionsByCodeSigningConfig,
            inputKey: \ListFunctionsByCodeSigningConfigRequest.marker,
            outputKey: \ListFunctionsByCodeSigningConfigResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the versions of an Lambda layer. Versions that have been deleted aren't listed. Specify a runtime identifier to list only versions that indicate that they're compatible with that runtime. Specify a compatible architecture to include only layer versions that are compatible with that architecture.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLayerVersionsPaginator(
        _ input: ListLayerVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLayerVersionsRequest, ListLayerVersionsResponse> {
        return .init(
            input: input,
            command: listLayerVersions,
            inputKey: \ListLayerVersionsRequest.marker,
            outputKey: \ListLayerVersionsResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists Lambda layers and shows information about the latest version of each. Specify a runtime identifier to list only layers that indicate that they're compatible with that runtime. Specify a compatible architecture to include only layers that are compatible with that instruction set architecture.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLayersPaginator(
        _ input: ListLayersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLayersRequest, ListLayersResponse> {
        return .init(
            input: input,
            command: listLayers,
            inputKey: \ListLayersRequest.marker,
            outputKey: \ListLayersResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of provisioned concurrency configurations for a function.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProvisionedConcurrencyConfigsPaginator(
        _ input: ListProvisionedConcurrencyConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProvisionedConcurrencyConfigsRequest, ListProvisionedConcurrencyConfigsResponse> {
        return .init(
            input: input,
            command: listProvisionedConcurrencyConfigs,
            inputKey: \ListProvisionedConcurrencyConfigsRequest.marker,
            outputKey: \ListProvisionedConcurrencyConfigsResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of versions, with the version-specific configuration of each. Lambda returns up to 50 versions per call.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVersionsByFunctionPaginator(
        _ input: ListVersionsByFunctionRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVersionsByFunctionRequest, ListVersionsByFunctionResponse> {
        return .init(
            input: input,
            command: listVersionsByFunction,
            inputKey: \ListVersionsByFunctionRequest.marker,
            outputKey: \ListVersionsByFunctionResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)