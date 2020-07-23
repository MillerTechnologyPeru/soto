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
Client object for interacting with AWS PersonalizeRuntime service.

*/
public struct PersonalizeRuntime {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the PersonalizeRuntime client
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
            service: "personalize-runtime",
            signingName: "personalize",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-22",
            endpoint: endpoint,
            possibleErrorTypes: [PersonalizeRuntimeErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Re-ranks a list of recommended items for the given user. The first item in the list is deemed the most likely item to be of interest to the user.  The solution backing the campaign must have been created using a recipe of type PERSONALIZED_RANKING. 
    public func getPersonalizedRanking(_ input: GetPersonalizedRankingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetPersonalizedRankingResponse> {
        return client.execute(operation: "GetPersonalizedRanking", path: "/personalize-ranking", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of recommended items. The required input depends on the recipe type used to create the solution backing the campaign, as follows:   RELATED_ITEMS - itemId required, userId not used   USER_PERSONALIZATION - itemId optional, userId required    Campaigns that are backed by a solution created using a recipe of type PERSONALIZED_RANKING use the API. 
    public func getRecommendations(_ input: GetRecommendationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetRecommendationsResponse> {
        return client.execute(operation: "GetRecommendations", path: "/recommendations", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
