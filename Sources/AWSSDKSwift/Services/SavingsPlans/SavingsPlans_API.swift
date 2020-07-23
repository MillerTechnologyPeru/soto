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
Client object for interacting with AWS SavingsPlans service.

Savings Plans are a pricing model that offer significant savings on AWS usage (for example, on Amazon EC2 instances). You commit to a consistent amount of usage, in USD per hour, for a term of 1 or 3 years, and receive a lower price for that usage. For more information, see the AWS Savings Plans User Guide.
*/
public struct SavingsPlans {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the SavingsPlans client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: nil,
            partition: partition,
            service: "savingsplans",
            serviceProtocol: .restjson,
            apiVersion: "2019-06-28",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "savingsplans.amazonaws.com"],
            partitionEndpoints: [.aws: (endpoint: "aws-global", region: .useast1)],
            possibleErrorTypes: [SavingsPlansErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Creates a Savings Plan.
    public func createSavingsPlan(_ input: CreateSavingsPlanRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateSavingsPlanResponse> {
        return client.execute(operation: "CreateSavingsPlan", path: "/CreateSavingsPlan", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the specified Savings Plans rates.
    public func describeSavingsPlanRates(_ input: DescribeSavingsPlanRatesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeSavingsPlanRatesResponse> {
        return client.execute(operation: "DescribeSavingsPlanRates", path: "/DescribeSavingsPlanRates", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the specified Savings Plans.
    public func describeSavingsPlans(_ input: DescribeSavingsPlansRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeSavingsPlansResponse> {
        return client.execute(operation: "DescribeSavingsPlans", path: "/DescribeSavingsPlans", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the specified Savings Plans offering rates.
    public func describeSavingsPlansOfferingRates(_ input: DescribeSavingsPlansOfferingRatesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeSavingsPlansOfferingRatesResponse> {
        return client.execute(operation: "DescribeSavingsPlansOfferingRates", path: "/DescribeSavingsPlansOfferingRates", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the specified Savings Plans offerings.
    public func describeSavingsPlansOfferings(_ input: DescribeSavingsPlansOfferingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeSavingsPlansOfferingsResponse> {
        return client.execute(operation: "DescribeSavingsPlansOfferings", path: "/DescribeSavingsPlansOfferings", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/ListTagsForResource", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds the specified tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/TagResource", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the specified tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/UntagResource", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
