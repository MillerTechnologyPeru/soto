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

import SotoCore

// MARK: Paginators

extension ApplicationDiscoveryService {
    ///  Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call DescribeContinuousExports as is without passing any parameters.
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
    public func describeContinuousExportsPaginator<Result>(
        _ input: DescribeContinuousExportsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeContinuousExportsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeContinuousExports,
            inputKey: \DescribeContinuousExportsRequest.nextToken,
            outputKey: \DescribeContinuousExportsResponse.nextToken,
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
    public func describeContinuousExportsPaginator(
        _ input: DescribeContinuousExportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeContinuousExportsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeContinuousExports,
            inputKey: \DescribeContinuousExportsRequest.nextToken,
            outputKey: \DescribeContinuousExportsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.
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
    public func describeImportTasksPaginator<Result>(
        _ input: DescribeImportTasksRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeImportTasksResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeImportTasks,
            inputKey: \DescribeImportTasksRequest.nextToken,
            outputKey: \DescribeImportTasksResponse.nextToken,
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
    public func describeImportTasksPaginator(
        _ input: DescribeImportTasksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeImportTasksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeImportTasks,
            inputKey: \DescribeImportTasksRequest.nextToken,
            outputKey: \DescribeImportTasksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ApplicationDiscoveryService.DescribeContinuousExportsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationDiscoveryService.DescribeContinuousExportsRequest {
        return .init(
            exportIds: self.exportIds,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ApplicationDiscoveryService.DescribeImportTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationDiscoveryService.DescribeImportTasksRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
