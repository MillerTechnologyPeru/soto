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

extension ConnectWisdomService {
    ///  Lists information about assistant associations.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAssistantAssociationsPaginator<Result>(
        _ input: ListAssistantAssociationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAssistantAssociationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAssistantAssociations,
            inputKey: \ListAssistantAssociationsRequest.nextToken,
            outputKey: \ListAssistantAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAssistantAssociationsPaginator(
        _ input: ListAssistantAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAssistantAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAssistantAssociations,
            inputKey: \ListAssistantAssociationsRequest.nextToken,
            outputKey: \ListAssistantAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists information about assistants.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAssistantsPaginator<Result>(
        _ input: ListAssistantsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAssistantsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAssistants,
            inputKey: \ListAssistantsRequest.nextToken,
            outputKey: \ListAssistantsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAssistantsPaginator(
        _ input: ListAssistantsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAssistantsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAssistants,
            inputKey: \ListAssistantsRequest.nextToken,
            outputKey: \ListAssistantsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the content.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listContentsPaginator<Result>(
        _ input: ListContentsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListContentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listContents,
            inputKey: \ListContentsRequest.nextToken,
            outputKey: \ListContentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listContentsPaginator(
        _ input: ListContentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListContentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listContents,
            inputKey: \ListContentsRequest.nextToken,
            outputKey: \ListContentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the knowledge bases.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listKnowledgeBasesPaginator<Result>(
        _ input: ListKnowledgeBasesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListKnowledgeBasesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listKnowledgeBases,
            inputKey: \ListKnowledgeBasesRequest.nextToken,
            outputKey: \ListKnowledgeBasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listKnowledgeBasesPaginator(
        _ input: ListKnowledgeBasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListKnowledgeBasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listKnowledgeBases,
            inputKey: \ListKnowledgeBasesRequest.nextToken,
            outputKey: \ListKnowledgeBasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Performs a manual search against the specified assistant. To retrieve recommendations for an assistant, use GetRecommendations.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func queryAssistantPaginator<Result>(
        _ input: QueryAssistantRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, QueryAssistantResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: queryAssistant,
            inputKey: \QueryAssistantRequest.nextToken,
            outputKey: \QueryAssistantResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func queryAssistantPaginator(
        _ input: QueryAssistantRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (QueryAssistantResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: queryAssistant,
            inputKey: \QueryAssistantRequest.nextToken,
            outputKey: \QueryAssistantResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches for content in a specified knowledge base. Can be used to get a specific content resource by its name.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func searchContentPaginator<Result>(
        _ input: SearchContentRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, SearchContentResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: searchContent,
            inputKey: \SearchContentRequest.nextToken,
            outputKey: \SearchContentResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func searchContentPaginator(
        _ input: SearchContentRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (SearchContentResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchContent,
            inputKey: \SearchContentRequest.nextToken,
            outputKey: \SearchContentResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches for sessions.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func searchSessionsPaginator<Result>(
        _ input: SearchSessionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, SearchSessionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: searchSessions,
            inputKey: \SearchSessionsRequest.nextToken,
            outputKey: \SearchSessionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func searchSessionsPaginator(
        _ input: SearchSessionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (SearchSessionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchSessions,
            inputKey: \SearchSessionsRequest.nextToken,
            outputKey: \SearchSessionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ConnectWisdomService.ListAssistantAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ConnectWisdomService.ListAssistantAssociationsRequest {
        return .init(
            assistantId: self.assistantId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ConnectWisdomService.ListAssistantsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ConnectWisdomService.ListAssistantsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ConnectWisdomService.ListContentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ConnectWisdomService.ListContentsRequest {
        return .init(
            knowledgeBaseId: self.knowledgeBaseId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ConnectWisdomService.ListKnowledgeBasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ConnectWisdomService.ListKnowledgeBasesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ConnectWisdomService.QueryAssistantRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ConnectWisdomService.QueryAssistantRequest {
        return .init(
            assistantId: self.assistantId,
            maxResults: self.maxResults,
            nextToken: token,
            queryText: self.queryText
        )
    }
}

extension ConnectWisdomService.SearchContentRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ConnectWisdomService.SearchContentRequest {
        return .init(
            knowledgeBaseId: self.knowledgeBaseId,
            maxResults: self.maxResults,
            nextToken: token,
            searchExpression: self.searchExpression
        )
    }
}

extension ConnectWisdomService.SearchSessionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ConnectWisdomService.SearchSessionsRequest {
        return .init(
            assistantId: self.assistantId,
            maxResults: self.maxResults,
            nextToken: token,
            searchExpression: self.searchExpression
        )
    }
}
