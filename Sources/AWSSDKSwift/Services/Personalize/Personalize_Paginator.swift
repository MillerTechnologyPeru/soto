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

extension Personalize {

    ///  Gets a list of the batch inference jobs that have been performed off of a solution version.
    public func listBatchInferenceJobsPaginator(
        _ input: ListBatchInferenceJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListBatchInferenceJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBatchInferenceJobs, tokenKey: \ListBatchInferenceJobsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of campaigns that use the given solution. When a solution is not specified, all the campaigns associated with the account are listed. The response provides the properties for each campaign, including the Amazon Resource Name (ARN). For more information on campaigns, see CreateCampaign.
    public func listCampaignsPaginator(
        _ input: ListCampaignsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListCampaignsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCampaigns, tokenKey: \ListCampaignsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of dataset groups. The response provides the properties for each dataset group, including the Amazon Resource Name (ARN). For more information on dataset groups, see CreateDatasetGroup.
    public func listDatasetGroupsPaginator(
        _ input: ListDatasetGroupsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDatasetGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatasetGroups, tokenKey: \ListDatasetGroupsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of dataset import jobs that use the given dataset. When a dataset is not specified, all the dataset import jobs associated with the account are listed. The response provides the properties for each dataset import job, including the Amazon Resource Name (ARN). For more information on dataset import jobs, see CreateDatasetImportJob. For more information on datasets, see CreateDataset.
    public func listDatasetImportJobsPaginator(
        _ input: ListDatasetImportJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDatasetImportJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatasetImportJobs, tokenKey: \ListDatasetImportJobsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns the list of datasets contained in the given dataset group. The response provides the properties for each dataset, including the Amazon Resource Name (ARN). For more information on datasets, see CreateDataset.
    public func listDatasetsPaginator(
        _ input: ListDatasetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDatasetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatasets, tokenKey: \ListDatasetsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns the list of event trackers associated with the account. The response provides the properties for each event tracker, including the Amazon Resource Name (ARN) and tracking ID. For more information on event trackers, see CreateEventTracker.
    public func listEventTrackersPaginator(
        _ input: ListEventTrackersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListEventTrackersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listEventTrackers, tokenKey: \ListEventTrackersResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of available recipes. The response provides the properties for each recipe, including the recipe's Amazon Resource Name (ARN).
    public func listRecipesPaginator(
        _ input: ListRecipesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRecipesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRecipes, tokenKey: \ListRecipesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns the list of schemas associated with the account. The response provides the properties for each schema, including the Amazon Resource Name (ARN). For more information on schemas, see CreateSchema.
    public func listSchemasPaginator(
        _ input: ListSchemasRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSchemasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSchemas, tokenKey: \ListSchemasResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of solution versions for the given solution. When a solution is not specified, all the solution versions associated with the account are listed. The response provides the properties for each solution version, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.
    public func listSolutionVersionsPaginator(
        _ input: ListSolutionVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSolutionVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSolutionVersions, tokenKey: \ListSolutionVersionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of solutions that use the given dataset group. When a dataset group is not specified, all the solutions associated with the account are listed. The response provides the properties for each solution, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.
    public func listSolutionsPaginator(
        _ input: ListSolutionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSolutionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSolutions, tokenKey: \ListSolutionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension Personalize.ListBatchInferenceJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Personalize.ListBatchInferenceJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            solutionVersionArn: self.solutionVersionArn
        )

    }
}

extension Personalize.ListCampaignsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Personalize.ListCampaignsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            solutionArn: self.solutionArn
        )

    }
}

extension Personalize.ListDatasetGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Personalize.ListDatasetGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Personalize.ListDatasetImportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Personalize.ListDatasetImportJobsRequest {
        return .init(
            datasetArn: self.datasetArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Personalize.ListDatasetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Personalize.ListDatasetsRequest {
        return .init(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Personalize.ListEventTrackersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Personalize.ListEventTrackersRequest {
        return .init(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Personalize.ListRecipesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Personalize.ListRecipesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            recipeProvider: self.recipeProvider
        )

    }
}

extension Personalize.ListSchemasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Personalize.ListSchemasRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Personalize.ListSolutionVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Personalize.ListSolutionVersionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            solutionArn: self.solutionArn
        )

    }
}

extension Personalize.ListSolutionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Personalize.ListSolutionsRequest {
        return .init(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


