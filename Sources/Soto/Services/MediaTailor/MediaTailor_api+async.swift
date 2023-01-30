//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MediaTailor {
    // MARK: Async API Calls

    /// Configures Amazon CloudWatch log settings for a channel.
    public func configureLogsForChannel(_ input: ConfigureLogsForChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfigureLogsForChannelResponse {
        return try await self.client.execute(operation: "ConfigureLogsForChannel", path: "/configureLogs/channel", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Amazon CloudWatch log settings for a playback configuration.
    public func configureLogsForPlaybackConfiguration(_ input: ConfigureLogsForPlaybackConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfigureLogsForPlaybackConfigurationResponse {
        return try await self.client.execute(operation: "ConfigureLogsForPlaybackConfiguration", path: "/configureLogs/playbackConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a channel. For information about MediaTailor channels, see Working with channels in the MediaTailor User Guide.
    public func createChannel(_ input: CreateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChannelResponse {
        return try await self.client.execute(operation: "CreateChannel", path: "/channel/{ChannelName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The live source configuration.
    public func createLiveSource(_ input: CreateLiveSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveSourceResponse {
        return try await self.client.execute(operation: "CreateLiveSource", path: "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a prefetch schedule for a playback configuration. A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain ads before an ad break happens. For more information about ad prefetching, see Using ad prefetching in the MediaTailor User Guide.
    public func createPrefetchSchedule(_ input: CreatePrefetchScheduleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrefetchScheduleResponse {
        return try await self.client.execute(operation: "CreatePrefetchSchedule", path: "/prefetchSchedule/{PlaybackConfigurationName}/{Name}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a program within a channel. For information about programs, see Working with programs in the MediaTailor User Guide.
    public func createProgram(_ input: CreateProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProgramResponse {
        return try await self.client.execute(operation: "CreateProgram", path: "/channel/{ChannelName}/program/{ProgramName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a source location. A source location is a container for sources. For more information about source locations, see Working with source locations in the MediaTailor User Guide.
    public func createSourceLocation(_ input: CreateSourceLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSourceLocationResponse {
        return try await self.client.execute(operation: "CreateSourceLocation", path: "/sourceLocation/{SourceLocationName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The VOD source configuration parameters.
    public func createVodSource(_ input: CreateVodSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVodSourceResponse {
        return try await self.client.execute(operation: "CreateVodSource", path: "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a channel. For information about MediaTailor channels, see Working with channels in the MediaTailor User Guide.
    public func deleteChannel(_ input: DeleteChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteChannelResponse {
        return try await self.client.execute(operation: "DeleteChannel", path: "/channel/{ChannelName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The channel policy to delete.
    public func deleteChannelPolicy(_ input: DeleteChannelPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteChannelPolicyResponse {
        return try await self.client.execute(operation: "DeleteChannelPolicy", path: "/channel/{ChannelName}/policy", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The live source to delete.
    public func deleteLiveSource(_ input: DeleteLiveSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveSourceResponse {
        return try await self.client.execute(operation: "DeleteLiveSource", path: "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a playback configuration. For information about MediaTailor configurations, see Working with configurations in AWS Elemental MediaTailor.
    public func deletePlaybackConfiguration(_ input: DeletePlaybackConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePlaybackConfigurationResponse {
        return try await self.client.execute(operation: "DeletePlaybackConfiguration", path: "/playbackConfiguration/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a prefetch schedule for a specific playback configuration. If you call DeletePrefetchSchedule on an expired prefetch schedule, MediaTailor returns an HTTP 404 status code. For more information about ad prefetching, see Using ad prefetching in the MediaTailor User Guide.
    public func deletePrefetchSchedule(_ input: DeletePrefetchScheduleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrefetchScheduleResponse {
        return try await self.client.execute(operation: "DeletePrefetchSchedule", path: "/prefetchSchedule/{PlaybackConfigurationName}/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a program within a channel. For information about programs, see Working with programs in the MediaTailor User Guide.
    public func deleteProgram(_ input: DeleteProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProgramResponse {
        return try await self.client.execute(operation: "DeleteProgram", path: "/channel/{ChannelName}/program/{ProgramName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a source location. A source location is a container for sources. For more information about source locations, see Working with source locations in the MediaTailor User Guide.
    public func deleteSourceLocation(_ input: DeleteSourceLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSourceLocationResponse {
        return try await self.client.execute(operation: "DeleteSourceLocation", path: "/sourceLocation/{SourceLocationName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The video on demand (VOD) source to delete.
    public func deleteVodSource(_ input: DeleteVodSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVodSourceResponse {
        return try await self.client.execute(operation: "DeleteVodSource", path: "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a channel. For information about MediaTailor channels, see Working with channels in the MediaTailor User Guide.
    public func describeChannel(_ input: DescribeChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelResponse {
        return try await self.client.execute(operation: "DescribeChannel", path: "/channel/{ChannelName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The live source to describe.
    public func describeLiveSource(_ input: DescribeLiveSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveSourceResponse {
        return try await self.client.execute(operation: "DescribeLiveSource", path: "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a program within a channel. For information about programs, see Working with programs in the MediaTailor User Guide.
    public func describeProgram(_ input: DescribeProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProgramResponse {
        return try await self.client.execute(operation: "DescribeProgram", path: "/channel/{ChannelName}/program/{ProgramName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a source location. A source location is a container for sources. For more information about source locations, see Working with source locations in the MediaTailor User Guide.
    public func describeSourceLocation(_ input: DescribeSourceLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSourceLocationResponse {
        return try await self.client.execute(operation: "DescribeSourceLocation", path: "/sourceLocation/{SourceLocationName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides details about a specific video on demand (VOD) source in a specific source location.
    public func describeVodSource(_ input: DescribeVodSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVodSourceResponse {
        return try await self.client.execute(operation: "DescribeVodSource", path: "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the channel's IAM policy. IAM policies are used to control access to your channel.
    public func getChannelPolicy(_ input: GetChannelPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChannelPolicyResponse {
        return try await self.client.execute(operation: "GetChannelPolicy", path: "/channel/{ChannelName}/policy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about your channel's schedule.
    public func getChannelSchedule(_ input: GetChannelScheduleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChannelScheduleResponse {
        return try await self.client.execute(operation: "GetChannelSchedule", path: "/channel/{ChannelName}/schedule", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a playback configuration. For information about MediaTailor configurations, see Working with configurations in AWS Elemental MediaTailor.
    public func getPlaybackConfiguration(_ input: GetPlaybackConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPlaybackConfigurationResponse {
        return try await self.client.execute(operation: "GetPlaybackConfiguration", path: "/playbackConfiguration/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a prefetch schedule for a playback configuration. A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain ads before an ad break happens. For more information about ad prefetching, see Using ad prefetching in the MediaTailor User Guide.
    public func getPrefetchSchedule(_ input: GetPrefetchScheduleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPrefetchScheduleResponse {
        return try await self.client.execute(operation: "GetPrefetchSchedule", path: "/prefetchSchedule/{PlaybackConfigurationName}/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the alerts that are associated with a MediaTailor channel assembly resource.
    public func listAlerts(_ input: ListAlertsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAlertsResponse {
        return try await self.client.execute(operation: "ListAlerts", path: "/alerts", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the channels that are associated with the current AWS account.
    public func listChannels(_ input: ListChannelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListChannelsResponse {
        return try await self.client.execute(operation: "ListChannels", path: "/channels", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the live sources contained in a source location. A source represents a piece of content.
    public func listLiveSources(_ input: ListLiveSourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLiveSourcesResponse {
        return try await self.client.execute(operation: "ListLiveSources", path: "/sourceLocation/{SourceLocationName}/liveSources", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves existing playback configurations. For information about MediaTailor configurations, see Working with Configurations in AWS Elemental MediaTailor.
    public func listPlaybackConfigurations(_ input: ListPlaybackConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPlaybackConfigurationsResponse {
        return try await self.client.execute(operation: "ListPlaybackConfigurations", path: "/playbackConfigurations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the prefetch schedules for a playback configuration.
    public func listPrefetchSchedules(_ input: ListPrefetchSchedulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPrefetchSchedulesResponse {
        return try await self.client.execute(operation: "ListPrefetchSchedules", path: "/prefetchSchedule/{PlaybackConfigurationName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the source locations for a channel. A source location defines the host server URL, and contains a list of sources.
    public func listSourceLocations(_ input: ListSourceLocationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSourceLocationsResponse {
        return try await self.client.execute(operation: "ListSourceLocations", path: "/sourceLocations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A list of tags that are associated with this resource. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see Tagging AWS Elemental MediaTailor Resources.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the VOD sources contained in a source location. A source represents a piece of content.
    public func listVodSources(_ input: ListVodSourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVodSourcesResponse {
        return try await self.client.execute(operation: "ListVodSources", path: "/sourceLocation/{SourceLocationName}/vodSources", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an IAM policy for the channel. IAM policies are used to control access to your channel.
    public func putChannelPolicy(_ input: PutChannelPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutChannelPolicyResponse {
        return try await self.client.execute(operation: "PutChannelPolicy", path: "/channel/{ChannelName}/policy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a playback configuration. For information about MediaTailor configurations, see Working with configurations in AWS Elemental MediaTailor.
    public func putPlaybackConfiguration(_ input: PutPlaybackConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutPlaybackConfigurationResponse {
        return try await self.client.execute(operation: "PutPlaybackConfiguration", path: "/playbackConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a channel. For information about MediaTailor channels, see Working with channels in the MediaTailor User Guide.
    public func startChannel(_ input: StartChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartChannelResponse {
        return try await self.client.execute(operation: "StartChannel", path: "/channel/{ChannelName}/start", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a channel. For information about MediaTailor channels, see Working with channels in the MediaTailor User Guide.
    public func stopChannel(_ input: StopChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopChannelResponse {
        return try await self.client.execute(operation: "StopChannel", path: "/channel/{ChannelName}/stop", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The resource to tag. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see Tagging AWS Elemental MediaTailor Resources.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The resource to untag.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a channel. For information about MediaTailor channels, see Working with channels in the MediaTailor User Guide.
    public func updateChannel(_ input: UpdateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateChannelResponse {
        return try await self.client.execute(operation: "UpdateChannel", path: "/channel/{ChannelName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a live source's configuration.
    public func updateLiveSource(_ input: UpdateLiveSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLiveSourceResponse {
        return try await self.client.execute(operation: "UpdateLiveSource", path: "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a source location. A source location is a container for sources. For more information about source locations, see Working with source locations in the MediaTailor User Guide.
    public func updateSourceLocation(_ input: UpdateSourceLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSourceLocationResponse {
        return try await self.client.execute(operation: "UpdateSourceLocation", path: "/sourceLocation/{SourceLocationName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a VOD source's configuration.
    public func updateVodSource(_ input: UpdateVodSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVodSourceResponse {
        return try await self.client.execute(operation: "UpdateVodSource", path: "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MediaTailor {
    /// Retrieves information about your channel's schedule.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getChannelSchedulePaginator(
        _ input: GetChannelScheduleRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetChannelScheduleRequest, GetChannelScheduleResponse> {
        return .init(
            input: input,
            command: self.getChannelSchedule,
            inputKey: \GetChannelScheduleRequest.nextToken,
            outputKey: \GetChannelScheduleResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the alerts that are associated with a MediaTailor channel assembly resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAlertsPaginator(
        _ input: ListAlertsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAlertsRequest, ListAlertsResponse> {
        return .init(
            input: input,
            command: self.listAlerts,
            inputKey: \ListAlertsRequest.nextToken,
            outputKey: \ListAlertsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves information about the channels that are associated with the current AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelsRequest, ListChannelsResponse> {
        return .init(
            input: input,
            command: self.listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the live sources contained in a source location. A source represents a piece of content.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLiveSourcesPaginator(
        _ input: ListLiveSourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLiveSourcesRequest, ListLiveSourcesResponse> {
        return .init(
            input: input,
            command: self.listLiveSources,
            inputKey: \ListLiveSourcesRequest.nextToken,
            outputKey: \ListLiveSourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves existing playback configurations. For information about MediaTailor configurations, see Working with Configurations in AWS Elemental MediaTailor.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPlaybackConfigurationsPaginator(
        _ input: ListPlaybackConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPlaybackConfigurationsRequest, ListPlaybackConfigurationsResponse> {
        return .init(
            input: input,
            command: self.listPlaybackConfigurations,
            inputKey: \ListPlaybackConfigurationsRequest.nextToken,
            outputKey: \ListPlaybackConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the prefetch schedules for a playback configuration.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPrefetchSchedulesPaginator(
        _ input: ListPrefetchSchedulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPrefetchSchedulesRequest, ListPrefetchSchedulesResponse> {
        return .init(
            input: input,
            command: self.listPrefetchSchedules,
            inputKey: \ListPrefetchSchedulesRequest.nextToken,
            outputKey: \ListPrefetchSchedulesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the source locations for a channel. A source location defines the host server URL, and contains a list of sources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSourceLocationsPaginator(
        _ input: ListSourceLocationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSourceLocationsRequest, ListSourceLocationsResponse> {
        return .init(
            input: input,
            command: self.listSourceLocations,
            inputKey: \ListSourceLocationsRequest.nextToken,
            outputKey: \ListSourceLocationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the VOD sources contained in a source location. A source represents a piece of content.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVodSourcesPaginator(
        _ input: ListVodSourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVodSourcesRequest, ListVodSourcesResponse> {
        return .init(
            input: input,
            command: self.listVodSources,
            inputKey: \ListVodSourcesRequest.nextToken,
            outputKey: \ListVodSourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
