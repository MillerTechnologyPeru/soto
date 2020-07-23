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
Client object for interacting with AWS TranscribeService service.

Operations and objects for transcribing speech to text.
*/
public struct TranscribeService {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the TranscribeService client
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
            amzTarget: "Transcribe",
            service: "transcribe",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-10-26",
            endpoint: endpoint,
            serviceEndpoints: ["cn-north-1": "cn.transcribe.cn-north-1.amazonaws.com.cn", "cn-northwest-1": "cn.transcribe.cn-northwest-1.amazonaws.com.cn"],
            possibleErrorTypes: [TranscribeServiceErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Creates a new custom vocabulary that you can use to change how Amazon Transcribe Medical transcribes your audio file.
    public func createMedicalVocabulary(_ input: CreateMedicalVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateMedicalVocabularyResponse> {
        return client.execute(operation: "CreateMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file. 
    public func createVocabulary(_ input: CreateVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateVocabularyResponse> {
        return client.execute(operation: "CreateVocabulary", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new vocabulary filter that you can use to filter words, such as profane words, from the output of a transcription job.
    public func createVocabularyFilter(_ input: CreateVocabularyFilterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateVocabularyFilterResponse> {
        return client.execute(operation: "CreateVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a transcription job generated by Amazon Transcribe Medical and any related information.
    @discardableResult public func deleteMedicalTranscriptionJob(_ input: DeleteMedicalTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteMedicalTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a vocabulary from Amazon Transcribe Medical.
    @discardableResult public func deleteMedicalVocabulary(_ input: DeleteMedicalVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a previously submitted transcription job along with any other generated results such as the transcription, models, and so on.
    @discardableResult public func deleteTranscriptionJob(_ input: DeleteTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a vocabulary from Amazon Transcribe. 
    @discardableResult public func deleteVocabulary(_ input: DeleteVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteVocabulary", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a vocabulary filter.
    @discardableResult public func deleteVocabularyFilter(_ input: DeleteVocabularyFilterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about a transcription job from Amazon Transcribe Medical. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished. You find the results of the completed job in the TranscriptFileUri field.
    public func getMedicalTranscriptionJob(_ input: GetMedicalTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetMedicalTranscriptionJobResponse> {
        return client.execute(operation: "GetMedicalTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve information about a medical vocabulary.
    public func getMedicalVocabulary(_ input: GetMedicalVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetMedicalVocabularyResponse> {
        return client.execute(operation: "GetMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about a transcription job. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished and you can find the results at the location specified in the TranscriptFileUri field. If you enable content redaction, the redacted transcript appears in RedactedTranscriptFileUri.
    public func getTranscriptionJob(_ input: GetTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetTranscriptionJobResponse> {
        return client.execute(operation: "GetTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about a vocabulary. 
    public func getVocabulary(_ input: GetVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetVocabularyResponse> {
        return client.execute(operation: "GetVocabulary", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about a vocabulary filter.
    public func getVocabularyFilter(_ input: GetVocabularyFilterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetVocabularyFilterResponse> {
        return client.execute(operation: "GetVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists medical transcription jobs with a specified status or substring that matches their names.
    public func listMedicalTranscriptionJobs(_ input: ListMedicalTranscriptionJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListMedicalTranscriptionJobsResponse> {
        return client.execute(operation: "ListMedicalTranscriptionJobs", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of vocabularies that match the specified criteria. You get the entire list of vocabularies if you don't enter a value in any of the request parameters.
    public func listMedicalVocabularies(_ input: ListMedicalVocabulariesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListMedicalVocabulariesResponse> {
        return client.execute(operation: "ListMedicalVocabularies", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists transcription jobs with the specified status.
    public func listTranscriptionJobs(_ input: ListTranscriptionJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTranscriptionJobsResponse> {
        return client.execute(operation: "ListTranscriptionJobs", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
    public func listVocabularies(_ input: ListVocabulariesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListVocabulariesResponse> {
        return client.execute(operation: "ListVocabularies", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about vocabulary filters.
    public func listVocabularyFilters(_ input: ListVocabularyFiltersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListVocabularyFiltersResponse> {
        return client.execute(operation: "ListVocabularyFilters", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Start a batch job to transcribe medical speech to text.
    public func startMedicalTranscriptionJob(_ input: StartMedicalTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartMedicalTranscriptionJobResponse> {
        return client.execute(operation: "StartMedicalTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an asynchronous job to transcribe speech to text. 
    public func startTranscriptionJob(_ input: StartTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartTranscriptionJobResponse> {
        return client.execute(operation: "StartTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing vocabulary with new values in a different text file. The UpdateMedicalVocabulary operation overwrites all of the existing information with the values that you provide in the request.
    public func updateMedicalVocabulary(_ input: UpdateMedicalVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateMedicalVocabularyResponse> {
        return client.execute(operation: "UpdateMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing vocabulary with new values. The UpdateVocabulary operation overwrites all of the existing information with the values that you provide in the request. 
    public func updateVocabulary(_ input: UpdateVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateVocabularyResponse> {
        return client.execute(operation: "UpdateVocabulary", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a vocabulary filter with a new list of filtered words.
    public func updateVocabularyFilter(_ input: UpdateVocabularyFilterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateVocabularyFilterResponse> {
        return client.execute(operation: "UpdateVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
