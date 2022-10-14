//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

import SotoCore

// MARK: Paginators

extension CloudTrail {
    ///  Gets event data results of a query. You must specify the QueryID value returned by the StartQuery  operation, and an ARN for EventDataStore.
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
    public func getQueryResultsPaginator<Result>(
        _ input: GetQueryResultsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetQueryResultsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getQueryResults,
            inputKey: \GetQueryResultsRequest.nextToken,
            outputKey: \GetQueryResultsResponse.nextToken,
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
    public func getQueryResultsPaginator(
        _ input: GetQueryResultsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetQueryResultsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getQueryResults,
            inputKey: \GetQueryResultsRequest.nextToken,
            outputKey: \GetQueryResultsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns all CloudTrail channels.
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
    public func listChannelsPaginator<Result>(
        _ input: ListChannelsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListChannelsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
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
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListChannelsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about all event data stores in the account, in the current region.
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
    public func listEventDataStoresPaginator<Result>(
        _ input: ListEventDataStoresRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEventDataStoresResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEventDataStores,
            inputKey: \ListEventDataStoresRequest.nextToken,
            outputKey: \ListEventDataStoresResponse.nextToken,
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
    public func listEventDataStoresPaginator(
        _ input: ListEventDataStoresRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEventDataStoresResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEventDataStores,
            inputKey: \ListEventDataStoresRequest.nextToken,
            outputKey: \ListEventDataStoresResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of failures for the specified import.
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
    public func listImportFailuresPaginator<Result>(
        _ input: ListImportFailuresRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListImportFailuresResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listImportFailures,
            inputKey: \ListImportFailuresRequest.nextToken,
            outputKey: \ListImportFailuresResponse.nextToken,
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
    public func listImportFailuresPaginator(
        _ input: ListImportFailuresRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListImportFailuresResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listImportFailures,
            inputKey: \ListImportFailuresRequest.nextToken,
            outputKey: \ListImportFailuresResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns information on all imports, or a select set of imports by ImportStatus or Destination.
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
    public func listImportsPaginator<Result>(
        _ input: ListImportsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListImportsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listImports,
            inputKey: \ListImportsRequest.nextToken,
            outputKey: \ListImportsResponse.nextToken,
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
    public func listImportsPaginator(
        _ input: ListImportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListImportsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listImports,
            inputKey: \ListImportsRequest.nextToken,
            outputKey: \ListImportsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.  CloudTrail uses different private and public key pairs per region. Each digest file is signed with a private key  unique to its region. When you validate a digest file from a specific region, you must look in the same region for its  corresponding public key.
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
    public func listPublicKeysPaginator<Result>(
        _ input: ListPublicKeysRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPublicKeysResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPublicKeys,
            inputKey: \ListPublicKeysRequest.nextToken,
            outputKey: \ListPublicKeysResponse.nextToken,
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
    public func listPublicKeysPaginator(
        _ input: ListPublicKeysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPublicKeysResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPublicKeys,
            inputKey: \ListPublicKeysRequest.nextToken,
            outputKey: \ListPublicKeysResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of queries and query statuses for the past seven days. You must specify an ARN value for  EventDataStore. Optionally, to shorten the list of results, you can specify a time range,  formatted as timestamps, by adding StartTime and EndTime parameters, and a  QueryStatus value. Valid values for QueryStatus include QUEUED, RUNNING,  FINISHED, FAILED, TIMED_OUT, or CANCELLED.
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
    public func listQueriesPaginator<Result>(
        _ input: ListQueriesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListQueriesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listQueries,
            inputKey: \ListQueriesRequest.nextToken,
            outputKey: \ListQueriesResponse.nextToken,
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
    public func listQueriesPaginator(
        _ input: ListQueriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListQueriesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listQueries,
            inputKey: \ListQueriesRequest.nextToken,
            outputKey: \ListQueriesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the tags for the trail or event data store in the current region.
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
    public func listTagsPaginator<Result>(
        _ input: ListTagsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTagsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTags,
            inputKey: \ListTagsRequest.nextToken,
            outputKey: \ListTagsResponse.nextToken,
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
    public func listTagsPaginator(
        _ input: ListTagsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTagsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTags,
            inputKey: \ListTagsRequest.nextToken,
            outputKey: \ListTagsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists trails that are in the current account.
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
    public func listTrailsPaginator<Result>(
        _ input: ListTrailsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTrailsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTrails,
            inputKey: \ListTrailsRequest.nextToken,
            outputKey: \ListTrailsResponse.nextToken,
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
    public func listTrailsPaginator(
        _ input: ListTrailsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTrailsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTrails,
            inputKey: \ListTrailsRequest.nextToken,
            outputKey: \ListTrailsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Looks up management events or  CloudTrail Insights events that are captured by CloudTrail.  You can look up events that occurred in a region within the last 90 days. Lookup supports the following attributes for management events:   Amazon Web Services access key   Event ID   Event name   Event source   Read only   Resource name   Resource type   User name   Lookup supports the following attributes for Insights events:   Event ID   Event name   Event source   All attributes are optional. The default number of results returned is 50, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.  The rate of lookup requests is limited to two per second, per account, per region. If this limit is exceeded, a throttling error occurs.
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
    public func lookupEventsPaginator<Result>(
        _ input: LookupEventsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, LookupEventsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: lookupEvents,
            inputKey: \LookupEventsRequest.nextToken,
            outputKey: \LookupEventsResponse.nextToken,
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
    public func lookupEventsPaginator(
        _ input: LookupEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (LookupEventsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: lookupEvents,
            inputKey: \LookupEventsRequest.nextToken,
            outputKey: \LookupEventsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension CloudTrail.GetQueryResultsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.GetQueryResultsRequest {
        return .init(
            eventDataStore: self.eventDataStore,
            maxQueryResults: self.maxQueryResults,
            nextToken: token,
            queryId: self.queryId
        )
    }
}

extension CloudTrail.ListChannelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.ListChannelsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CloudTrail.ListEventDataStoresRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.ListEventDataStoresRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CloudTrail.ListImportFailuresRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.ListImportFailuresRequest {
        return .init(
            importId: self.importId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CloudTrail.ListImportsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.ListImportsRequest {
        return .init(
            destination: self.destination,
            importStatus: self.importStatus,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CloudTrail.ListPublicKeysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.ListPublicKeysRequest {
        return .init(
            endTime: self.endTime,
            nextToken: token,
            startTime: self.startTime
        )
    }
}

extension CloudTrail.ListQueriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.ListQueriesRequest {
        return .init(
            endTime: self.endTime,
            eventDataStore: self.eventDataStore,
            maxResults: self.maxResults,
            nextToken: token,
            queryStatus: self.queryStatus,
            startTime: self.startTime
        )
    }
}

extension CloudTrail.ListTagsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.ListTagsRequest {
        return .init(
            nextToken: token,
            resourceIdList: self.resourceIdList
        )
    }
}

extension CloudTrail.ListTrailsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.ListTrailsRequest {
        return .init(
            nextToken: token
        )
    }
}

extension CloudTrail.LookupEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.LookupEventsRequest {
        return .init(
            endTime: self.endTime,
            eventCategory: self.eventCategory,
            lookupAttributes: self.lookupAttributes,
            maxResults: self.maxResults,
            nextToken: token,
            startTime: self.startTime
        )
    }
}
