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
extension DLM {
    // MARK: Async API Calls

    /// Creates a policy to manage the lifecycle of the specified Amazon Web Services resources. You can
    /// 			create up to 100 lifecycle policies.
    public func createLifecyclePolicy(_ input: CreateLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLifecyclePolicyResponse {
        return try await self.client.execute(operation: "CreateLifecyclePolicy", path: "/policies", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified lifecycle policy and halts the automated operations that the
    /// 			policy specified.
    /// 		       For more information about deleting a policy, see Delete lifecycle
    /// 			policies.
    public func deleteLifecyclePolicy(_ input: DeleteLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLifecyclePolicyResponse {
        return try await self.client.execute(operation: "DeleteLifecyclePolicy", path: "/policies/{PolicyId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets summary information about all or the specified data lifecycle policies.
    /// 		       To get complete information about a policy, use GetLifecyclePolicy.
    public func getLifecyclePolicies(_ input: GetLifecyclePoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLifecyclePoliciesResponse {
        return try await self.client.execute(operation: "GetLifecyclePolicies", path: "/policies", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets detailed information about the specified lifecycle policy.
    public func getLifecyclePolicy(_ input: GetLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLifecyclePolicyResponse {
        return try await self.client.execute(operation: "GetLifecyclePolicy", path: "/policies/{PolicyId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified lifecycle policy.
    /// 		       For more information about updating a policy, see Modify lifecycle
    /// 			policies.
    public func updateLifecyclePolicy(_ input: UpdateLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLifecyclePolicyResponse {
        return try await self.client.execute(operation: "UpdateLifecyclePolicy", path: "/policies/{PolicyId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)