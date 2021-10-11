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

/// Service object for interacting with AWS VoiceID service.
///
/// Amazon Connect Voice ID provides real-time caller authentication and fraud screening. This guide describes the APIs used for this service.
public struct VoiceID: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the VoiceID client
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
            amzTarget: "VoiceID",
            service: "voiceid",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2021-09-27",
            endpoint: endpoint,
            errorType: VoiceIDErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a domain that contains all Amazon Connect Voice ID data, such as speakers, fraudsters, customer audio, and voiceprints.
    public func createDomain(_ input: CreateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainResponse> {
        return self.client.execute(operation: "CreateDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified domain from the Amazon Connect Voice ID system.
    @discardableResult public func deleteDomain(_ input: DeleteDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified fraudster from the Amazon Connect Voice ID system.
    @discardableResult public func deleteFraudster(_ input: DeleteFraudsterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteFraudster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified speaker from the Amazon Connect Voice ID system.
    @discardableResult public func deleteSpeaker(_ input: DeleteSpeakerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteSpeaker", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified domain.
    public func describeDomain(_ input: DescribeDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainResponse> {
        return self.client.execute(operation: "DescribeDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified fraudster.
    public func describeFraudster(_ input: DescribeFraudsterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFraudsterResponse> {
        return self.client.execute(operation: "DescribeFraudster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified fraudster registration job.
    public func describeFraudsterRegistrationJob(_ input: DescribeFraudsterRegistrationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFraudsterRegistrationJobResponse> {
        return self.client.execute(operation: "DescribeFraudsterRegistrationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified speaker.
    public func describeSpeaker(_ input: DescribeSpeakerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpeakerResponse> {
        return self.client.execute(operation: "DescribeSpeaker", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified speaker enrollment job.
    public func describeSpeakerEnrollmentJob(_ input: DescribeSpeakerEnrollmentJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpeakerEnrollmentJobResponse> {
        return self.client.execute(operation: "DescribeSpeakerEnrollmentJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Evaluates a specified session based on audio data accumulated during a streaming Amazon Connect Voice ID call.
    public func evaluateSession(_ input: EvaluateSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EvaluateSessionResponse> {
        return self.client.execute(operation: "EvaluateSession", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the domains in the Amazon Web Services account.
    public func listDomains(_ input: ListDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDomainsResponse> {
        return self.client.execute(operation: "ListDomains", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the fraudster registration jobs in the domain with the given JobStatus. If JobStatus is not provided, this lists all fraudster registration jobs in the given domain.
    public func listFraudsterRegistrationJobs(_ input: ListFraudsterRegistrationJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFraudsterRegistrationJobsResponse> {
        return self.client.execute(operation: "ListFraudsterRegistrationJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the speaker enrollment jobs in the domain with the specified JobStatus. If JobStatus is not provided, this lists all jobs with all possible speaker enrollment job statuses.
    public func listSpeakerEnrollmentJobs(_ input: ListSpeakerEnrollmentJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSpeakerEnrollmentJobsResponse> {
        return self.client.execute(operation: "ListSpeakerEnrollmentJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all speakers in a specified domain.
    public func listSpeakers(_ input: ListSpeakersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSpeakersResponse> {
        return self.client.execute(operation: "ListSpeakers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all tags associated with a specified Voice ID resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Opts out a speaker from Voice ID system. A speaker can be opted out regardless of whether or not they already exist in the system. If they don't yet exist, a new speaker is created in an opted out state. If they already exist, their existing status is overridden and they are opted out. Enrollment and evaluation authentication requests are rejected for opted out speakers, and opted out speakers have no voice embeddings stored in the system.
    public func optOutSpeaker(_ input: OptOutSpeakerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OptOutSpeakerResponse> {
        return self.client.execute(operation: "OptOutSpeaker", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a new batch fraudster registration job using provided details.
    public func startFraudsterRegistrationJob(_ input: StartFraudsterRegistrationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartFraudsterRegistrationJobResponse> {
        return self.client.execute(operation: "StartFraudsterRegistrationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a new batch speaker enrollment job using specified details.
    public func startSpeakerEnrollmentJob(_ input: StartSpeakerEnrollmentJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartSpeakerEnrollmentJobResponse> {
        return self.client.execute(operation: "StartSpeakerEnrollmentJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tags an Amazon Connect Voice ID resource with the provided list of tags.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes specified tags from a specified Amazon Connect Voice ID resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified domain. This API has clobber behavior, and clears and replaces all attributes. If an optional field, such as 'Description' is not provided, it is removed from the domain.
    public func updateDomain(_ input: UpdateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDomainResponse> {
        return self.client.execute(operation: "UpdateDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension VoiceID {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: VoiceID, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
