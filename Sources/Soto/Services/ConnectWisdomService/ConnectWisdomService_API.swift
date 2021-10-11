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

/// Service object for interacting with AWS ConnectWisdomService service.
///
/// All Amazon Connect Wisdom functionality is accessible using the API. For example, you can create an assistant and a knowledge base.  &lt;p&gt;Some more advanced features are only accessible using the Wisdom API. For example, you can manually manage content by uploading custom files and control their lifecycle. &lt;/p&gt;
public struct ConnectWisdomService: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ConnectWisdomService client
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
            service: "wisdom",
            serviceProtocol: .restjson,
            apiVersion: "2020-10-19",
            endpoint: endpoint,
            errorType: ConnectWisdomServiceErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates an Amazon Connect Wisdom assistant.
    public func createAssistant(_ input: CreateAssistantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssistantResponse> {
        return self.client.execute(operation: "CreateAssistant", path: "/assistants", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an association between an Amazon Connect Wisdom assistant and another resource. Currently, the only supported association is with a knowledge base. An assistant can have only a single association.
    public func createAssistantAssociation(_ input: CreateAssistantAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssistantAssociationResponse> {
        return self.client.execute(operation: "CreateAssistantAssociation", path: "/assistants/{assistantId}/associations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates Wisdom content. Before to calling this API, use StartContentUpload to upload an asset.
    public func createContent(_ input: CreateContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateContentResponse> {
        return self.client.execute(operation: "CreateContent", path: "/knowledgeBases/{knowledgeBaseId}/contents", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a knowledge base.  When using this API, you cannot reuse Amazon AppIntegrations DataIntegrations with external knowledge bases such as Salesforce and ServiceNow. If you do, you'll get an InvalidRequestException error.   &lt;p&gt;For example, you're programmatically managing your external knowledge base, and you want to add or remove one of the fields that is being ingested from Salesforce. Do the following:&lt;/p&gt; &lt;ol&gt; &lt;li&gt; &lt;p&gt;Call &lt;a href=&quot;https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html&quot;&gt;DeleteKnowledgeBase&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Call &lt;a href=&quot;https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html&quot;&gt;DeleteDataIntegration&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Call &lt;a href=&quot;https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html&quot;&gt;CreateDataIntegration&lt;/a&gt; to recreate the DataIntegration or a create different one.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Call CreateKnowledgeBase.&lt;/p&gt; &lt;/li&gt; &lt;/ol&gt; &lt;/note&gt;
    public func createKnowledgeBase(_ input: CreateKnowledgeBaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateKnowledgeBaseResponse> {
        return self.client.execute(operation: "CreateKnowledgeBase", path: "/knowledgeBases", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a session. A session is a contextual container used for generating recommendations. Amazon Connect creates a new Wisdom session for each contact on which Wisdom is enabled.
    public func createSession(_ input: CreateSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSessionResponse> {
        return self.client.execute(operation: "CreateSession", path: "/assistants/{assistantId}/sessions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an assistant.
    public func deleteAssistant(_ input: DeleteAssistantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAssistantResponse> {
        return self.client.execute(operation: "DeleteAssistant", path: "/assistants/{assistantId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an assistant association.
    public func deleteAssistantAssociation(_ input: DeleteAssistantAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAssistantAssociationResponse> {
        return self.client.execute(operation: "DeleteAssistantAssociation", path: "/assistants/{assistantId}/associations/{assistantAssociationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the content.
    public func deleteContent(_ input: DeleteContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteContentResponse> {
        return self.client.execute(operation: "DeleteContent", path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the knowledge base.  When you use this API to delete an external knowledge base such as Salesforce or ServiceNow, you must also delete the Amazon AppIntegrations DataIntegration. This is because you can't reuse the DataIntegration after it's been associated with an external knowledge base. However, you can delete and recreate it. See DeleteDataIntegration and CreateDataIntegration in the Amazon AppIntegrations API Reference.
    public func deleteKnowledgeBase(_ input: DeleteKnowledgeBaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteKnowledgeBaseResponse> {
        return self.client.execute(operation: "DeleteKnowledgeBase", path: "/knowledgeBases/{knowledgeBaseId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about an assistant.
    public func getAssistant(_ input: GetAssistantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAssistantResponse> {
        return self.client.execute(operation: "GetAssistant", path: "/assistants/{assistantId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about an assistant association.
    public func getAssistantAssociation(_ input: GetAssistantAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAssistantAssociationResponse> {
        return self.client.execute(operation: "GetAssistantAssociation", path: "/assistants/{assistantId}/associations/{assistantAssociationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves content, including a pre-signed URL to download the content.
    public func getContent(_ input: GetContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetContentResponse> {
        return self.client.execute(operation: "GetContent", path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves summary information about the content.
    public func getContentSummary(_ input: GetContentSummaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetContentSummaryResponse> {
        return self.client.execute(operation: "GetContentSummary", path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the knowledge base.
    public func getKnowledgeBase(_ input: GetKnowledgeBaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetKnowledgeBaseResponse> {
        return self.client.execute(operation: "GetKnowledgeBase", path: "/knowledgeBases/{knowledgeBaseId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves recommendations for the specified session. To avoid retrieving the same recommendations in subsequent calls, use NotifyRecommendationsReceived. This API supports long-polling behavior with the waitTimeSeconds parameter. Short poll is the default behavior and only returns recommendations already available. To perform a manual query against an assistant, use QueryAssistant.
    public func getRecommendations(_ input: GetRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecommendationsResponse> {
        return self.client.execute(operation: "GetRecommendations", path: "/assistants/{assistantId}/sessions/{sessionId}/recommendations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information for a specified session.
    public func getSession(_ input: GetSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSessionResponse> {
        return self.client.execute(operation: "GetSession", path: "/assistants/{assistantId}/sessions/{sessionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists information about assistant associations.
    public func listAssistantAssociations(_ input: ListAssistantAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssistantAssociationsResponse> {
        return self.client.execute(operation: "ListAssistantAssociations", path: "/assistants/{assistantId}/associations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists information about assistants.
    public func listAssistants(_ input: ListAssistantsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssistantsResponse> {
        return self.client.execute(operation: "ListAssistants", path: "/assistants", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the content.
    public func listContents(_ input: ListContentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListContentsResponse> {
        return self.client.execute(operation: "ListContents", path: "/knowledgeBases/{knowledgeBaseId}/contents", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the knowledge bases.
    public func listKnowledgeBases(_ input: ListKnowledgeBasesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListKnowledgeBasesResponse> {
        return self.client.execute(operation: "ListKnowledgeBases", path: "/knowledgeBases", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified recommendations from the specified assistant's queue of newly available recommendations. You can use this API in conjunction with GetRecommendations and a waitTimeSeconds input for long-polling behavior and avoiding duplicate recommendations.
    public func notifyRecommendationsReceived(_ input: NotifyRecommendationsReceivedRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<NotifyRecommendationsReceivedResponse> {
        return self.client.execute(operation: "NotifyRecommendationsReceived", path: "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Performs a manual search against the specified assistant. To retrieve recommendations for an assistant, use GetRecommendations.
    public func queryAssistant(_ input: QueryAssistantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryAssistantResponse> {
        return self.client.execute(operation: "QueryAssistant", path: "/assistants/{assistantId}/query", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a URI template from a knowledge base.
    public func removeKnowledgeBaseTemplateUri(_ input: RemoveKnowledgeBaseTemplateUriRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveKnowledgeBaseTemplateUriResponse> {
        return self.client.execute(operation: "RemoveKnowledgeBaseTemplateUri", path: "/knowledgeBases/{knowledgeBaseId}/templateUri", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Searches for content in a specified knowledge base. Can be used to get a specific content resource by its name.
    public func searchContent(_ input: SearchContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchContentResponse> {
        return self.client.execute(operation: "SearchContent", path: "/knowledgeBases/{knowledgeBaseId}/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Searches for sessions.
    public func searchSessions(_ input: SearchSessionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchSessionsResponse> {
        return self.client.execute(operation: "SearchSessions", path: "/assistants/{assistantId}/searchSessions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a URL to upload content to a knowledge base. To upload content, first make a PUT request to the returned URL with your file, making sure to include the required headers. Then use CreateContent to finalize the content creation process or UpdateContent to modify an existing resource. You can only upload content to a knowledge base of type CUSTOM.
    public func startContentUpload(_ input: StartContentUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartContentUploadResponse> {
        return self.client.execute(operation: "StartContentUpload", path: "/knowledgeBases/{knowledgeBaseId}/upload", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates information about the content.
    public func updateContent(_ input: UpdateContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateContentResponse> {
        return self.client.execute(operation: "UpdateContent", path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the template URI of a knowledge base. This is only supported for knowledge bases of type EXTERNAL. Include a single variable in ${variable} format; this interpolated by Wisdom using ingested content. For example, if you ingest a Salesforce article, it has an Id value, and you can set the template URI to https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view.
    public func updateKnowledgeBaseTemplateUri(_ input: UpdateKnowledgeBaseTemplateUriRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateKnowledgeBaseTemplateUriResponse> {
        return self.client.execute(operation: "UpdateKnowledgeBaseTemplateUri", path: "/knowledgeBases/{knowledgeBaseId}/templateUri", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ConnectWisdomService {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ConnectWisdomService, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
