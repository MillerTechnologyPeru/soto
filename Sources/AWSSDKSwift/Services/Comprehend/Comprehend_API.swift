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
Client object for interacting with AWS Comprehend service.

Amazon Comprehend is an AWS service for gaining insight into the content of documents. Use these actions to determine the topics contained in your documents, the topics they discuss, the predominant sentiment expressed in them, the predominant language used, and more.
*/
public struct Comprehend {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Comprehend client
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
            amzTarget: "Comprehend_20171127",
            service: "comprehend",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            possibleErrorTypes: [ComprehendErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see Amazon Comprehend Supported Languages. 
    public func batchDetectDominantLanguage(_ input: BatchDetectDominantLanguageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchDetectDominantLanguageResponse> {
        return client.execute(operation: "BatchDetectDominantLanguage", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Inspects the text of a batch of documents for named entities and returns information about them. For more information about named entities, see how-entities 
    public func batchDetectEntities(_ input: BatchDetectEntitiesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchDetectEntitiesResponse> {
        return client.execute(operation: "BatchDetectEntities", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Detects the key noun phrases found in a batch of documents.
    public func batchDetectKeyPhrases(_ input: BatchDetectKeyPhrasesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchDetectKeyPhrasesResponse> {
        return client.execute(operation: "BatchDetectKeyPhrases", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Inspects a batch of documents and returns an inference of the prevailing sentiment, POSITIVE, NEUTRAL, MIXED, or NEGATIVE, in each one.
    public func batchDetectSentiment(_ input: BatchDetectSentimentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchDetectSentimentResponse> {
        return client.execute(operation: "BatchDetectSentiment", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them. For more information, see how-syntax.
    public func batchDetectSyntax(_ input: BatchDetectSyntaxRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchDetectSyntaxResponse> {
        return client.execute(operation: "BatchDetectSyntax", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new document classification request to analyze a single document in real-time, using a previously created and trained custom model and an endpoint.
    public func classifyDocument(_ input: ClassifyDocumentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ClassifyDocumentResponse> {
        return client.execute(operation: "ClassifyDocument", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new document classifier that you can use to categorize documents. To create a classifier you provide a set of training documents that labeled with the categories that you want to use. After the classifier is trained you can use it to categorize a set of labeled documents into the categories. For more information, see how-document-classification.
    public func createDocumentClassifier(_ input: CreateDocumentClassifierRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDocumentClassifierResponse> {
        return client.execute(operation: "CreateDocumentClassifier", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a model-specific endpoint for synchronous inference for a previously trained custom model 
    public func createEndpoint(_ input: CreateEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateEndpointResponse> {
        return client.execute(operation: "CreateEndpoint", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an entity recognizer using submitted files. After your CreateEntityRecognizer request is submitted, you can check job status using the API. 
    public func createEntityRecognizer(_ input: CreateEntityRecognizerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateEntityRecognizerResponse> {
        return client.execute(operation: "CreateEntityRecognizer", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a previously created document classifier Only those classifiers that are in terminated states (IN_ERROR, TRAINED) will be deleted. If an active inference job is using the model, a ResourceInUseException will be returned. This is an asynchronous action that puts the classifier into a DELETING state, and it is then removed by a background job. Once removed, the classifier disappears from your account and is no longer available for use. 
    public func deleteDocumentClassifier(_ input: DeleteDocumentClassifierRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteDocumentClassifierResponse> {
        return client.execute(operation: "DeleteDocumentClassifier", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a model-specific endpoint for a previously-trained custom model. All endpoints must be deleted in order for the model to be deleted.
    public func deleteEndpoint(_ input: DeleteEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteEndpointResponse> {
        return client.execute(operation: "DeleteEndpoint", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an entity recognizer. Only those recognizers that are in terminated states (IN_ERROR, TRAINED) will be deleted. If an active inference job is using the model, a ResourceInUseException will be returned. This is an asynchronous action that puts the recognizer into a DELETING state, and it is then removed by a background job. Once removed, the recognizer disappears from your account and is no longer available for use. 
    public func deleteEntityRecognizer(_ input: DeleteEntityRecognizerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteEntityRecognizerResponse> {
        return client.execute(operation: "DeleteEntityRecognizer", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the properties associated with a document classification job. Use this operation to get the status of a classification job.
    public func describeDocumentClassificationJob(_ input: DescribeDocumentClassificationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeDocumentClassificationJobResponse> {
        return client.execute(operation: "DescribeDocumentClassificationJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the properties associated with a document classifier.
    public func describeDocumentClassifier(_ input: DescribeDocumentClassifierRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeDocumentClassifierResponse> {
        return client.execute(operation: "DescribeDocumentClassifier", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the properties associated with a dominant language detection job. Use this operation to get the status of a detection job.
    public func describeDominantLanguageDetectionJob(_ input: DescribeDominantLanguageDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeDominantLanguageDetectionJobResponse> {
        return client.execute(operation: "DescribeDominantLanguageDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the properties associated with a specific endpoint. Use this operation to get the status of an endpoint.
    public func describeEndpoint(_ input: DescribeEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeEndpointResponse> {
        return client.execute(operation: "DescribeEndpoint", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the properties associated with an entities detection job. Use this operation to get the status of a detection job.
    public func describeEntitiesDetectionJob(_ input: DescribeEntitiesDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeEntitiesDetectionJobResponse> {
        return client.execute(operation: "DescribeEntitiesDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides details about an entity recognizer including status, S3 buckets containing training data, recognizer metadata, metrics, and so on.
    public func describeEntityRecognizer(_ input: DescribeEntityRecognizerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeEntityRecognizerResponse> {
        return client.execute(operation: "DescribeEntityRecognizer", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the properties associated with a key phrases detection job. Use this operation to get the status of a detection job.
    public func describeKeyPhrasesDetectionJob(_ input: DescribeKeyPhrasesDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeKeyPhrasesDetectionJobResponse> {
        return client.execute(operation: "DescribeKeyPhrasesDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the properties associated with a sentiment detection job. Use this operation to get the status of a detection job.
    public func describeSentimentDetectionJob(_ input: DescribeSentimentDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeSentimentDetectionJobResponse> {
        return client.execute(operation: "DescribeSentimentDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.
    public func describeTopicsDetectionJob(_ input: DescribeTopicsDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeTopicsDetectionJobResponse> {
        return client.execute(operation: "DescribeTopicsDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see Amazon Comprehend Supported Languages. 
    public func detectDominantLanguage(_ input: DetectDominantLanguageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DetectDominantLanguageResponse> {
        return client.execute(operation: "DetectDominantLanguage", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Inspects text for named entities, and returns information about them. For more information, about named entities, see how-entities. 
    public func detectEntities(_ input: DetectEntitiesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DetectEntitiesResponse> {
        return client.execute(operation: "DetectEntities", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Detects the key noun phrases found in the text. 
    public func detectKeyPhrases(_ input: DetectKeyPhrasesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DetectKeyPhrasesResponse> {
        return client.execute(operation: "DetectKeyPhrases", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Inspects text and returns an inference of the prevailing sentiment (POSITIVE, NEUTRAL, MIXED, or NEGATIVE). 
    public func detectSentiment(_ input: DetectSentimentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DetectSentimentResponse> {
        return client.execute(operation: "DetectSentiment", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Inspects text for syntax and the part of speech of words in the document. For more information, how-syntax.
    public func detectSyntax(_ input: DetectSyntaxRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DetectSyntaxResponse> {
        return client.execute(operation: "DetectSyntax", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of the documentation classification jobs that you have submitted.
    public func listDocumentClassificationJobs(_ input: ListDocumentClassificationJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDocumentClassificationJobsResponse> {
        return client.execute(operation: "ListDocumentClassificationJobs", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of the document classifiers that you have created.
    public func listDocumentClassifiers(_ input: ListDocumentClassifiersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDocumentClassifiersResponse> {
        return client.execute(operation: "ListDocumentClassifiers", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of the dominant language detection jobs that you have submitted.
    public func listDominantLanguageDetectionJobs(_ input: ListDominantLanguageDetectionJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDominantLanguageDetectionJobsResponse> {
        return client.execute(operation: "ListDominantLanguageDetectionJobs", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of all existing endpoints that you've created.
    public func listEndpoints(_ input: ListEndpointsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListEndpointsResponse> {
        return client.execute(operation: "ListEndpoints", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of the entity detection jobs that you have submitted.
    public func listEntitiesDetectionJobs(_ input: ListEntitiesDetectionJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListEntitiesDetectionJobsResponse> {
        return client.execute(operation: "ListEntitiesDetectionJobs", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training. Allows you to filter the list of recognizers based on criteria such as status and submission time. This call returns up to 500 entity recognizers in the list, with a default number of 100 recognizers in the list. The results of this list are not in any particular order. Please get the list and sort locally if needed.
    public func listEntityRecognizers(_ input: ListEntityRecognizersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListEntityRecognizersResponse> {
        return client.execute(operation: "ListEntityRecognizers", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Get a list of key phrase detection jobs that you have submitted.
    public func listKeyPhrasesDetectionJobs(_ input: ListKeyPhrasesDetectionJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListKeyPhrasesDetectionJobsResponse> {
        return client.execute(operation: "ListKeyPhrasesDetectionJobs", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of sentiment detection jobs that you have submitted.
    public func listSentimentDetectionJobs(_ input: ListSentimentDetectionJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListSentimentDetectionJobsResponse> {
        return client.execute(operation: "ListSentimentDetectionJobs", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all tags associated with a given Amazon Comprehend resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of the topic detection jobs that you have submitted.
    public func listTopicsDetectionJobs(_ input: ListTopicsDetectionJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTopicsDetectionJobsResponse> {
        return client.execute(operation: "ListTopicsDetectionJobs", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an asynchronous document classification job. Use the operation to track the progress of the job.
    public func startDocumentClassificationJob(_ input: StartDocumentClassificationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartDocumentClassificationJobResponse> {
        return client.execute(operation: "StartDocumentClassificationJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an asynchronous dominant language detection job for a collection of documents. Use the operation to track the status of a job.
    public func startDominantLanguageDetectionJob(_ input: StartDominantLanguageDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartDominantLanguageDetectionJobResponse> {
        return client.execute(operation: "StartDominantLanguageDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an asynchronous entity detection job for a collection of documents. Use the operation to track the status of a job. This API can be used for either standard entity detection or custom entity recognition. In order to be used for custom entity recognition, the optional EntityRecognizerArn must be used in order to provide access to the recognizer being used to detect the custom entity.
    public func startEntitiesDetectionJob(_ input: StartEntitiesDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartEntitiesDetectionJobResponse> {
        return client.execute(operation: "StartEntitiesDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an asynchronous key phrase detection job for a collection of documents. Use the operation to track the status of a job.
    public func startKeyPhrasesDetectionJob(_ input: StartKeyPhrasesDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartKeyPhrasesDetectionJobResponse> {
        return client.execute(operation: "StartKeyPhrasesDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an asynchronous sentiment detection job for a collection of documents. use the operation to track the status of a job.
    public func startSentimentDetectionJob(_ input: StartSentimentDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartSentimentDetectionJobResponse> {
        return client.execute(operation: "StartSentimentDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an asynchronous topic detection job. Use the DescribeTopicDetectionJob operation to track the status of a job.
    public func startTopicsDetectionJob(_ input: StartTopicsDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartTopicsDetectionJobResponse> {
        return client.execute(operation: "StartTopicsDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops a dominant language detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopDominantLanguageDetectionJob(_ input: StopDominantLanguageDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopDominantLanguageDetectionJobResponse> {
        return client.execute(operation: "StopDominantLanguageDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops an entities detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopEntitiesDetectionJob(_ input: StopEntitiesDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopEntitiesDetectionJobResponse> {
        return client.execute(operation: "StopEntitiesDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops a key phrases detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopKeyPhrasesDetectionJob(_ input: StopKeyPhrasesDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopKeyPhrasesDetectionJobResponse> {
        return client.execute(operation: "StopKeyPhrasesDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops a sentiment detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is be stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopSentimentDetectionJob(_ input: StopSentimentDetectionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopSentimentDetectionJobResponse> {
        return client.execute(operation: "StopSentimentDetectionJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops a document classifier training job while in progress. If the training job state is TRAINING, the job is marked for termination and put into the STOP_REQUESTED state. If the training job completes before it can be stopped, it is put into the TRAINED; otherwise the training job is stopped and put into the STOPPED state and the service sends back an HTTP 200 response with an empty HTTP body. 
    public func stopTrainingDocumentClassifier(_ input: StopTrainingDocumentClassifierRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopTrainingDocumentClassifierResponse> {
        return client.execute(operation: "StopTrainingDocumentClassifier", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops an entity recognizer training job while in progress. If the training job state is TRAINING, the job is marked for termination and put into the STOP_REQUESTED state. If the training job completes before it can be stopped, it is put into the TRAINED; otherwise the training job is stopped and putted into the STOPPED state and the service sends back an HTTP 200 response with an empty HTTP body.
    public func stopTrainingEntityRecognizer(_ input: StopTrainingEntityRecognizerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopTrainingEntityRecognizerResponse> {
        return client.execute(operation: "StopTrainingEntityRecognizer", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Associates a specific tag with an Amazon Comprehend resource. A tag is a key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key might be added to a resource to indicate its use by the sales department. 
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a specific tag associated with an Amazon Comprehend resource. 
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates information about the specified endpoint.
    public func updateEndpoint(_ input: UpdateEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateEndpointResponse> {
        return client.execute(operation: "UpdateEndpoint", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
