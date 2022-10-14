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

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension IdentityStore {
    // MARK: Async API Calls

    /// Creates a group within the specified identity store.
    public func createGroup(_ input: CreateGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupResponse {
        return try await self.client.execute(operation: "CreateGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a relationship between a member and a group. The following identifiers must be specified: GroupId, IdentityStoreId, and MemberId.
    public func createGroupMembership(_ input: CreateGroupMembershipRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupMembershipResponse {
        return try await self.client.execute(operation: "CreateGroupMembership", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new user within the specified identity store.
    public func createUser(_ input: CreateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        return try await self.client.execute(operation: "CreateUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a group within an identity store given GroupId.
    public func deleteGroup(_ input: DeleteGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGroupResponse {
        return try await self.client.execute(operation: "DeleteGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a membership within a group given MembershipId.
    public func deleteGroupMembership(_ input: DeleteGroupMembershipRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGroupMembershipResponse {
        return try await self.client.execute(operation: "DeleteGroupMembership", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a user within an identity store given UserId.
    public func deleteUser(_ input: DeleteUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResponse {
        return try await self.client.execute(operation: "DeleteUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the group metadata and attributes from GroupId in an identity store.
    public func describeGroup(_ input: DescribeGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupResponse {
        return try await self.client.execute(operation: "DescribeGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves membership metadata and attributes from MembershipId in an identity store.
    public func describeGroupMembership(_ input: DescribeGroupMembershipRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupMembershipResponse {
        return try await self.client.execute(operation: "DescribeGroupMembership", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the user metadata and attributes from the UserId in an identity store.
    public func describeUser(_ input: DescribeUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResponse {
        return try await self.client.execute(operation: "DescribeUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves GroupId in an identity store.
    public func getGroupId(_ input: GetGroupIdRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupIdResponse {
        return try await self.client.execute(operation: "GetGroupId", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the MembershipId in an identity store.
    public func getGroupMembershipId(_ input: GetGroupMembershipIdRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupMembershipIdResponse {
        return try await self.client.execute(operation: "GetGroupMembershipId", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the UserId in an identity store.
    public func getUserId(_ input: GetUserIdRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUserIdResponse {
        return try await self.client.execute(operation: "GetUserId", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks the user's membership in all requested groups and returns if the member exists in all queried groups.
    public func isMemberInGroups(_ input: IsMemberInGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsMemberInGroupsResponse {
        return try await self.client.execute(operation: "IsMemberInGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For the specified group in the specified identity store, returns the list of all GroupMembership objects and returns results in paginated form.
    public func listGroupMemberships(_ input: ListGroupMembershipsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGroupMembershipsResponse {
        return try await self.client.execute(operation: "ListGroupMemberships", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For the specified member in the specified identity store, returns the list of all GroupMembership objects and returns results in paginated form.
    public func listGroupMembershipsForMember(_ input: ListGroupMembershipsForMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGroupMembershipsForMemberResponse {
        return try await self.client.execute(operation: "ListGroupMembershipsForMember", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all groups in the identity store. Returns a paginated list of complete Group objects.  Filtering for a Group by the DisplayName attribute is deprecated. Instead, use the GetGroupId API action.
    public func listGroups(_ input: ListGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGroupsResponse {
        return try await self.client.execute(operation: "ListGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all users in the identity store. Returns a paginated list of complete User objects.  Filtering for a User by the UserName attribute is deprecated. Instead, use the GetUserId API action.
    public func listUsers(_ input: ListUsersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersResponse {
        return try await self.client.execute(operation: "ListUsers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For the specified group in the specified identity store, updates the group metadata and attributes.
    public func updateGroup(_ input: UpdateGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGroupResponse {
        return try await self.client.execute(operation: "UpdateGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For the specified user in the specified identity store, updates the user metadata and attributes.
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUserResponse {
        return try await self.client.execute(operation: "UpdateUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
