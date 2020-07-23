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

extension RAM {

    ///  Gets the policies for the specified resources that you own and have shared.
    public func getResourcePoliciesPaginator(
        _ input: GetResourcePoliciesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetResourcePoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getResourcePolicies, tokenKey: \GetResourcePoliciesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Gets the resources or principals for the resource shares that you own.
    public func getResourceShareAssociationsPaginator(
        _ input: GetResourceShareAssociationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetResourceShareAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getResourceShareAssociations, tokenKey: \GetResourceShareAssociationsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Gets the invitations for resource sharing that you've received.
    public func getResourceShareInvitationsPaginator(
        _ input: GetResourceShareInvitationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetResourceShareInvitationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getResourceShareInvitations, tokenKey: \GetResourceShareInvitationsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Gets the resource shares that you own or the resource shares that are shared with you.
    public func getResourceSharesPaginator(
        _ input: GetResourceSharesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetResourceSharesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getResourceShares, tokenKey: \GetResourceSharesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the resources in a resource share that is shared with you but that the invitation is still pending for.
    public func listPendingInvitationResourcesPaginator(
        _ input: ListPendingInvitationResourcesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPendingInvitationResourcesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPendingInvitationResources, tokenKey: \ListPendingInvitationResourcesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the principals that you have shared resources with or that have shared resources with you.
    public func listPrincipalsPaginator(
        _ input: ListPrincipalsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPrincipalsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPrincipals, tokenKey: \ListPrincipalsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the resources that you added to a resource shares or the resources that are shared with you.
    public func listResourcesPaginator(
        _ input: ListResourcesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListResourcesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResources, tokenKey: \ListResourcesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension RAM.GetResourcePoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RAM.GetResourcePoliciesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            principal: self.principal,
            resourceArns: self.resourceArns
        )

    }
}

extension RAM.GetResourceShareAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RAM.GetResourceShareAssociationsRequest {
        return .init(
            associationStatus: self.associationStatus,
            associationType: self.associationType,
            maxResults: self.maxResults,
            nextToken: token,
            principal: self.principal,
            resourceArn: self.resourceArn,
            resourceShareArns: self.resourceShareArns
        )

    }
}

extension RAM.GetResourceShareInvitationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RAM.GetResourceShareInvitationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceShareArns: self.resourceShareArns,
            resourceShareInvitationArns: self.resourceShareInvitationArns
        )

    }
}

extension RAM.GetResourceSharesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RAM.GetResourceSharesRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            resourceOwner: self.resourceOwner,
            resourceShareArns: self.resourceShareArns,
            resourceShareStatus: self.resourceShareStatus,
            tagFilters: self.tagFilters
        )

    }
}

extension RAM.ListPendingInvitationResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RAM.ListPendingInvitationResourcesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceShareInvitationArn: self.resourceShareInvitationArn
        )

    }
}

extension RAM.ListPrincipalsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RAM.ListPrincipalsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            principals: self.principals,
            resourceArn: self.resourceArn,
            resourceOwner: self.resourceOwner,
            resourceShareArns: self.resourceShareArns,
            resourceType: self.resourceType
        )

    }
}

extension RAM.ListResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RAM.ListResourcesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            principal: self.principal,
            resourceArns: self.resourceArns,
            resourceOwner: self.resourceOwner,
            resourceShareArns: self.resourceShareArns,
            resourceType: self.resourceType
        )

    }
}


