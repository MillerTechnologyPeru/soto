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

import AWSSDKSwiftCore

//MARK: Paginators

extension DataExchange {

    ///  This operation lists a data set's revisions sorted by CreatedAt in descending order.
    public func listDataSetRevisionsPaginator(
        _ input: ListDataSetRevisionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDataSetRevisionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDataSetRevisions, tokenKey: \ListDataSetRevisionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    public func listDataSetsPaginator(
        _ input: ListDataSetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDataSetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDataSets, tokenKey: \ListDataSetsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  This operation lists your jobs sorted by CreatedAt in descending order.
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listJobs, tokenKey: \ListJobsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  This operation lists a revision's assets sorted alphabetically in descending order.
    public func listRevisionAssetsPaginator(
        _ input: ListRevisionAssetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRevisionAssetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRevisionAssets, tokenKey: \ListRevisionAssetsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension DataExchange.ListDataSetRevisionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataExchange.ListDataSetRevisionsRequest {
        return .init(
            dataSetId: self.dataSetId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension DataExchange.ListDataSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataExchange.ListDataSetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            origin: self.origin
        )

    }
}

extension DataExchange.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataExchange.ListJobsRequest {
        return .init(
            dataSetId: self.dataSetId,
            maxResults: self.maxResults,
            nextToken: token,
            revisionId: self.revisionId
        )

    }
}

extension DataExchange.ListRevisionAssetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataExchange.ListRevisionAssetsRequest {
        return .init(
            dataSetId: self.dataSetId,
            maxResults: self.maxResults,
            nextToken: token,
            revisionId: self.revisionId
        )

    }
}


