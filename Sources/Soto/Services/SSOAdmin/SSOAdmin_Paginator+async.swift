//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SSOAdmin {
    ///  Lists the status of the AWS account assignment creation requests for a specified IAM Identity Center instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountAssignmentCreationStatusPaginator(
        _ input: ListAccountAssignmentCreationStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountAssignmentCreationStatusRequest, ListAccountAssignmentCreationStatusResponse> {
        return .init(
            input: input,
            command: listAccountAssignmentCreationStatus,
            inputKey: \ListAccountAssignmentCreationStatusRequest.nextToken,
            outputKey: \ListAccountAssignmentCreationStatusResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the status of the AWS account assignment deletion requests for a specified IAM Identity Center instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountAssignmentDeletionStatusPaginator(
        _ input: ListAccountAssignmentDeletionStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountAssignmentDeletionStatusRequest, ListAccountAssignmentDeletionStatusResponse> {
        return .init(
            input: input,
            command: listAccountAssignmentDeletionStatus,
            inputKey: \ListAccountAssignmentDeletionStatusRequest.nextToken,
            outputKey: \ListAccountAssignmentDeletionStatusResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the assignee of the specified AWS account with the specified permission set.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountAssignmentsPaginator(
        _ input: ListAccountAssignmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountAssignmentsRequest, ListAccountAssignmentsResponse> {
        return .init(
            input: input,
            command: listAccountAssignments,
            inputKey: \ListAccountAssignmentsRequest.nextToken,
            outputKey: \ListAccountAssignmentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the AWS accounts where the specified permission set is provisioned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountsForProvisionedPermissionSetPaginator(
        _ input: ListAccountsForProvisionedPermissionSetRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountsForProvisionedPermissionSetRequest, ListAccountsForProvisionedPermissionSetResponse> {
        return .init(
            input: input,
            command: listAccountsForProvisionedPermissionSet,
            inputKey: \ListAccountsForProvisionedPermissionSetRequest.nextToken,
            outputKey: \ListAccountsForProvisionedPermissionSetResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all customer managed policies attached to a specified PermissionSet.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCustomerManagedPolicyReferencesInPermissionSetPaginator(
        _ input: ListCustomerManagedPolicyReferencesInPermissionSetRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomerManagedPolicyReferencesInPermissionSetRequest, ListCustomerManagedPolicyReferencesInPermissionSetResponse> {
        return .init(
            input: input,
            command: listCustomerManagedPolicyReferencesInPermissionSet,
            inputKey: \ListCustomerManagedPolicyReferencesInPermissionSetRequest.nextToken,
            outputKey: \ListCustomerManagedPolicyReferencesInPermissionSetResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the IAM Identity Center instances that the caller has access to.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstancesPaginator(
        _ input: ListInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstancesRequest, ListInstancesResponse> {
        return .init(
            input: input,
            command: listInstances,
            inputKey: \ListInstancesRequest.nextToken,
            outputKey: \ListInstancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the AWS managed policy that is attached to a specified permission set.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listManagedPoliciesInPermissionSetPaginator(
        _ input: ListManagedPoliciesInPermissionSetRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListManagedPoliciesInPermissionSetRequest, ListManagedPoliciesInPermissionSetResponse> {
        return .init(
            input: input,
            command: listManagedPoliciesInPermissionSet,
            inputKey: \ListManagedPoliciesInPermissionSetRequest.nextToken,
            outputKey: \ListManagedPoliciesInPermissionSetResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the status of the permission set provisioning requests for a specified IAM Identity Center instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPermissionSetProvisioningStatusPaginator(
        _ input: ListPermissionSetProvisioningStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPermissionSetProvisioningStatusRequest, ListPermissionSetProvisioningStatusResponse> {
        return .init(
            input: input,
            command: listPermissionSetProvisioningStatus,
            inputKey: \ListPermissionSetProvisioningStatusRequest.nextToken,
            outputKey: \ListPermissionSetProvisioningStatusResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the PermissionSets in an IAM Identity Center instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPermissionSetsPaginator(
        _ input: ListPermissionSetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPermissionSetsRequest, ListPermissionSetsResponse> {
        return .init(
            input: input,
            command: listPermissionSets,
            inputKey: \ListPermissionSetsRequest.nextToken,
            outputKey: \ListPermissionSetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the permission sets that are provisioned to a specified AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPermissionSetsProvisionedToAccountPaginator(
        _ input: ListPermissionSetsProvisionedToAccountRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPermissionSetsProvisionedToAccountRequest, ListPermissionSetsProvisionedToAccountResponse> {
        return .init(
            input: input,
            command: listPermissionSetsProvisionedToAccount,
            inputKey: \ListPermissionSetsProvisionedToAccountRequest.nextToken,
            outputKey: \ListPermissionSetsProvisionedToAccountResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the tags that are attached to a specified resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsForResourceRequest, ListTagsForResourceResponse> {
        return .init(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceRequest.nextToken,
            outputKey: \ListTagsForResourceResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
