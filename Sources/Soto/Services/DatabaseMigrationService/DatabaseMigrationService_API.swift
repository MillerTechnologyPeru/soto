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

/// Service object for interacting with AWS DatabaseMigrationService service.
///
/// AWS Database Migration Service AWS Database Migration Service (AWS DMS) can migrate your data to and from the most widely used commercial and open-source databases such as Oracle, PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise (ASE). The service supports homogeneous migrations such as Oracle to Oracle, as well as heterogeneous migrations between different database platforms, such as Oracle to MySQL or SQL Server to PostgreSQL. For more information about AWS DMS, see What Is AWS Database Migration Service? in the AWS Database Migration User Guide.
public struct DatabaseMigrationService: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the DatabaseMigrationService client
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
            amzTarget: "AmazonDMSv20160101",
            service: "dms",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-01-01",
            endpoint: endpoint,
            errorType: DatabaseMigrationServiceErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with DMS resources, or used in a Condition statement in an IAM policy for DMS. For more information, see  Tag  data type description.
    public func addTagsToResource(_ input: AddTagsToResourceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTagsToResourceResponse> {
        return self.client.execute(operation: "AddTagsToResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies a pending maintenance action to a resource (for example, to a replication instance).
    public func applyPendingMaintenanceAction(_ input: ApplyPendingMaintenanceActionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyPendingMaintenanceActionResponse> {
        return self.client.execute(operation: "ApplyPendingMaintenanceAction", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels a single premigration assessment run. This operation prevents any individual assessments from running if they haven't started running. It also attempts to cancel any individual assessments that are currently running.
    public func cancelReplicationTaskAssessmentRun(_ input: CancelReplicationTaskAssessmentRunMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelReplicationTaskAssessmentRunResponse> {
        return self.client.execute(operation: "CancelReplicationTaskAssessmentRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an endpoint using the provided settings.
    public func createEndpoint(_ input: CreateEndpointMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEndpointResponse> {
        return self.client.execute(operation: "CreateEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates an AWS DMS event notification subscription.  You can specify the type of source (SourceType) you want to be notified of, provide a list of AWS DMS source IDs (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. If you specify both the SourceType and SourceIds, such as SourceType = replication-instance and SourceIdentifier = my-replinstance, you will be notified of all the replication instance events for the specified source. If you specify a SourceType but don't specify a SourceIdentifier, you receive notice of the events for that source type for all your AWS DMS sources. If you don't specify either SourceType nor SourceIdentifier, you will be notified of events generated from all AWS DMS sources belonging to your customer account. For more information about AWS DMS events, see Working with Events and Notifications in the AWS Database Migration Service User Guide.
    public func createEventSubscription(_ input: CreateEventSubscriptionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEventSubscriptionResponse> {
        return self.client.execute(operation: "CreateEventSubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the replication instance using the specified parameters. AWS DMS requires that your account have certain roles with appropriate permissions before you can create a replication instance. For information on the required roles, see Creating the IAM Roles to Use With the AWS CLI and AWS DMS API. For information on the required permissions, see IAM Permissions Needed to Use AWS DMS.
    public func createReplicationInstance(_ input: CreateReplicationInstanceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReplicationInstanceResponse> {
        return self.client.execute(operation: "CreateReplicationInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a replication subnet group given a list of the subnet IDs in a VPC.
    public func createReplicationSubnetGroup(_ input: CreateReplicationSubnetGroupMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReplicationSubnetGroupResponse> {
        return self.client.execute(operation: "CreateReplicationSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a replication task using the specified parameters.
    public func createReplicationTask(_ input: CreateReplicationTaskMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReplicationTaskResponse> {
        return self.client.execute(operation: "CreateReplicationTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified certificate.
    public func deleteCertificate(_ input: DeleteCertificateMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCertificateResponse> {
        return self.client.execute(operation: "DeleteCertificate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the connection between a replication instance and an endpoint.
    public func deleteConnection(_ input: DeleteConnectionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConnectionResponse> {
        return self.client.execute(operation: "DeleteConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified endpoint.  All tasks associated with the endpoint must be deleted before you can delete the endpoint.
    public func deleteEndpoint(_ input: DeleteEndpointMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEndpointResponse> {
        return self.client.execute(operation: "DeleteEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes an AWS DMS event subscription.
    public func deleteEventSubscription(_ input: DeleteEventSubscriptionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEventSubscriptionResponse> {
        return self.client.execute(operation: "DeleteEventSubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified replication instance.  You must delete any migration tasks that are associated with the replication instance before you can delete it.
    public func deleteReplicationInstance(_ input: DeleteReplicationInstanceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReplicationInstanceResponse> {
        return self.client.execute(operation: "DeleteReplicationInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a subnet group.
    public func deleteReplicationSubnetGroup(_ input: DeleteReplicationSubnetGroupMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReplicationSubnetGroupResponse> {
        return self.client.execute(operation: "DeleteReplicationSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified replication task.
    public func deleteReplicationTask(_ input: DeleteReplicationTaskMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReplicationTaskResponse> {
        return self.client.execute(operation: "DeleteReplicationTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the record of a single premigration assessment run. This operation removes all metadata that AWS DMS maintains about this assessment run. However, the operation leaves untouched all information about this assessment run that is stored in your Amazon S3 bucket.
    public func deleteReplicationTaskAssessmentRun(_ input: DeleteReplicationTaskAssessmentRunMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReplicationTaskAssessmentRunResponse> {
        return self.client.execute(operation: "DeleteReplicationTaskAssessmentRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the AWS DMS attributes for a customer account. These attributes include AWS DMS quotas for the account and a unique account identifier in a particular DMS region. DMS quotas include a list of resource quotas supported by the account, such as the number of replication instances allowed. The description for each resource quota, includes the quota name, current usage toward that quota, and the quota's maximum value. DMS uses the unique account identifier to name each artifact used by DMS in the given region. This command does not take any parameters.
    public func describeAccountAttributes(_ input: DescribeAccountAttributesMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountAttributesResponse> {
        return self.client.execute(operation: "DescribeAccountAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of individual assessments that you can specify for a new premigration assessment run, given one or more parameters. If you specify an existing migration task, this operation provides the default individual assessments you can specify for that task. Otherwise, the specified parameters model elements of a possible migration task on which to base a premigration assessment run. To use these migration task modeling parameters, you must specify an existing replication instance, a source database engine, a target database engine, and a migration type. This combination of parameters potentially limits the default individual assessments available for an assessment run created for a corresponding migration task. If you specify no parameters, this operation provides a list of all possible individual assessments that you can specify for an assessment run. If you specify any one of the task modeling parameters, you must specify all of them or the operation cannot provide a list of individual assessments. The only parameter that you can specify alone is for an existing migration task. The specified task definition then determines the default list of individual assessments that you can specify in an assessment run for the task.
    public func describeApplicableIndividualAssessments(_ input: DescribeApplicableIndividualAssessmentsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicableIndividualAssessmentsResponse> {
        return self.client.execute(operation: "DescribeApplicableIndividualAssessments", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a description of the certificate.
    public func describeCertificates(_ input: DescribeCertificatesMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificatesResponse> {
        return self.client.execute(operation: "DescribeCertificates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.
    public func describeConnections(_ input: DescribeConnectionsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConnectionsResponse> {
        return self.client.execute(operation: "DescribeConnections", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the type of endpoints available.
    public func describeEndpointTypes(_ input: DescribeEndpointTypesMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndpointTypesResponse> {
        return self.client.execute(operation: "DescribeEndpointTypes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the endpoints for your account in the current region.
    public func describeEndpoints(_ input: DescribeEndpointsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndpointsResponse> {
        return self.client.execute(operation: "DescribeEndpoints", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in Working with Events and Notifications in the AWS Database Migration Service User Guide.
    public func describeEventCategories(_ input: DescribeEventCategoriesMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventCategoriesResponse> {
        return self.client.execute(operation: "DescribeEventCategories", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the event subscriptions for a customer account. The description of a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.  If you specify SubscriptionName, this action lists the description for that subscription.
    public func describeEventSubscriptions(_ input: DescribeEventSubscriptionsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventSubscriptionsResponse> {
        return self.client.execute(operation: "DescribeEventSubscriptions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see Working with Events and Notifications in the AWS Database Migration User Guide.
    public func describeEvents(_ input: DescribeEventsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventsResponse> {
        return self.client.execute(operation: "DescribeEvents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the replication instance types that can be created in the specified region.
    public func describeOrderableReplicationInstances(_ input: DescribeOrderableReplicationInstancesMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrderableReplicationInstancesResponse> {
        return self.client.execute(operation: "DescribeOrderableReplicationInstances", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For internal use only
    public func describePendingMaintenanceActions(_ input: DescribePendingMaintenanceActionsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePendingMaintenanceActionsResponse> {
        return self.client.execute(operation: "DescribePendingMaintenanceActions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the status of the RefreshSchemas operation.
    public func describeRefreshSchemasStatus(_ input: DescribeRefreshSchemasStatusMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRefreshSchemasStatusResponse> {
        return self.client.execute(operation: "DescribeRefreshSchemasStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the task logs for the specified task.
    public func describeReplicationInstanceTaskLogs(_ input: DescribeReplicationInstanceTaskLogsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationInstanceTaskLogsResponse> {
        return self.client.execute(operation: "DescribeReplicationInstanceTaskLogs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about replication instances for your account in the current region.
    public func describeReplicationInstances(_ input: DescribeReplicationInstancesMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationInstancesResponse> {
        return self.client.execute(operation: "DescribeReplicationInstances", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the replication subnet groups.
    public func describeReplicationSubnetGroups(_ input: DescribeReplicationSubnetGroupsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationSubnetGroupsResponse> {
        return self.client.execute(operation: "DescribeReplicationSubnetGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the task assessment results from Amazon S3. This action always returns the latest results.
    public func describeReplicationTaskAssessmentResults(_ input: DescribeReplicationTaskAssessmentResultsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationTaskAssessmentResultsResponse> {
        return self.client.execute(operation: "DescribeReplicationTaskAssessmentResults", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of premigration assessment runs based on filter settings. These filter settings can specify a combination of premigration assessment runs, migration tasks, replication instances, and assessment run status values.  This operation doesn't return information about individual assessments. For this information, see the DescribeReplicationTaskIndividualAssessments operation.
    public func describeReplicationTaskAssessmentRuns(_ input: DescribeReplicationTaskAssessmentRunsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationTaskAssessmentRunsResponse> {
        return self.client.execute(operation: "DescribeReplicationTaskAssessmentRuns", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of individual assessments based on filter settings. These filter settings can specify a combination of premigration assessment runs, migration tasks, and assessment status values.
    public func describeReplicationTaskIndividualAssessments(_ input: DescribeReplicationTaskIndividualAssessmentsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationTaskIndividualAssessmentsResponse> {
        return self.client.execute(operation: "DescribeReplicationTaskIndividualAssessments", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about replication tasks for your account in the current region.
    public func describeReplicationTasks(_ input: DescribeReplicationTasksMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationTasksResponse> {
        return self.client.execute(operation: "DescribeReplicationTasks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the schema for the specified endpoint.
    public func describeSchemas(_ input: DescribeSchemasMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchemasResponse> {
        return self.client.execute(operation: "DescribeSchemas", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted. Note that the "last updated" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.
    public func describeTableStatistics(_ input: DescribeTableStatisticsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableStatisticsResponse> {
        return self.client.execute(operation: "DescribeTableStatistics", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Uploads the specified certificate.
    public func importCertificate(_ input: ImportCertificateMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportCertificateResponse> {
        return self.client.execute(operation: "ImportCertificate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all metadata tags attached to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. For more information, see  Tag  data type description.
    public func listTagsForResource(_ input: ListTagsForResourceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the specified endpoint.
    public func modifyEndpoint(_ input: ModifyEndpointMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEndpointResponse> {
        return self.client.execute(operation: "ModifyEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies an existing AWS DMS event notification subscription.
    public func modifyEventSubscription(_ input: ModifyEventSubscriptionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEventSubscriptionResponse> {
        return self.client.execute(operation: "ModifyEventSubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request. Some settings are applied during the maintenance window.
    public func modifyReplicationInstance(_ input: ModifyReplicationInstanceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReplicationInstanceResponse> {
        return self.client.execute(operation: "ModifyReplicationInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the settings for the specified replication subnet group.
    public func modifyReplicationSubnetGroup(_ input: ModifyReplicationSubnetGroupMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReplicationSubnetGroupResponse> {
        return self.client.execute(operation: "ModifyReplicationSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the specified replication task. You can't modify the task endpoints. The task must be stopped before you can modify it.  For more information about AWS DMS tasks, see Working with Migration Tasks in the AWS Database Migration Service User Guide.
    public func modifyReplicationTask(_ input: ModifyReplicationTaskMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReplicationTaskResponse> {
        return self.client.execute(operation: "ModifyReplicationTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Moves a replication task from its current replication instance to a different target replication instance using the specified parameters. The target replication instance must be created with the same or later AWS DMS version as the current replication instance.
    public func moveReplicationTask(_ input: MoveReplicationTaskMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MoveReplicationTaskResponse> {
        return self.client.execute(operation: "MoveReplicationTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Reboots a replication instance. Rebooting results in a momentary outage, until the replication instance becomes available again.
    public func rebootReplicationInstance(_ input: RebootReplicationInstanceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebootReplicationInstanceResponse> {
        return self.client.execute(operation: "RebootReplicationInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the DescribeRefreshSchemasStatus operation.
    public func refreshSchemas(_ input: RefreshSchemasMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefreshSchemasResponse> {
        return self.client.execute(operation: "RefreshSchemas", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Reloads the target database table with the source data.
    public func reloadTables(_ input: ReloadTablesMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReloadTablesResponse> {
        return self.client.execute(operation: "ReloadTables", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes metadata tags from an AWS DMS resource, including replication instance, endpoint, security group, and migration task. For more information, see  Tag  data type description.
    public func removeTagsFromResource(_ input: RemoveTagsFromResourceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveTagsFromResourceResponse> {
        return self.client.execute(operation: "RemoveTagsFromResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the replication task. For more information about AWS DMS tasks, see Working with Migration Tasks  in the AWS Database Migration Service User Guide.
    public func startReplicationTask(_ input: StartReplicationTaskMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartReplicationTaskResponse> {
        return self.client.execute(operation: "StartReplicationTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts the replication task assessment for unsupported data types in the source database.
    public func startReplicationTaskAssessment(_ input: StartReplicationTaskAssessmentMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartReplicationTaskAssessmentResponse> {
        return self.client.execute(operation: "StartReplicationTaskAssessment", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a new premigration assessment run for one or more individual assessments of a migration task. The assessments that you can specify depend on the source and target database engine and the migration type defined for the given task. To run this operation, your migration task must already be created. After you run this operation, you can review the status of each individual assessment. You can also run the migration task manually after the assessment run and its individual assessments complete.
    public func startReplicationTaskAssessmentRun(_ input: StartReplicationTaskAssessmentRunMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartReplicationTaskAssessmentRunResponse> {
        return self.client.execute(operation: "StartReplicationTaskAssessmentRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the replication task.
    public func stopReplicationTask(_ input: StopReplicationTaskMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopReplicationTaskResponse> {
        return self.client.execute(operation: "StopReplicationTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tests the connection between the replication instance and the endpoint.
    public func testConnection(_ input: TestConnectionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TestConnectionResponse> {
        return self.client.execute(operation: "TestConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension DatabaseMigrationService {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: DatabaseMigrationService, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
