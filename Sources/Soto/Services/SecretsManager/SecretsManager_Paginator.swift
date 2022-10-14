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

import SotoCore

// MARK: Paginators

extension SecretsManager {
    ///  Lists the versions of a secret. Secrets Manager uses staging labels to indicate the different versions  of a secret. For more information, see  Secrets Manager concepts: Versions. To list the secrets in the account, use ListSecrets. Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see Logging Secrets Manager events with CloudTrail.  Required permissions:  secretsmanager:ListSecretVersionIds.  For more information, see  IAM policy actions for Secrets Manager and Authentication  and access control in Secrets Manager.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSecretVersionIdsPaginator<Result>(
        _ input: ListSecretVersionIdsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSecretVersionIdsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSecretVersionIds,
            inputKey: \ListSecretVersionIdsRequest.nextToken,
            outputKey: \ListSecretVersionIdsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSecretVersionIdsPaginator(
        _ input: ListSecretVersionIdsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSecretVersionIdsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSecretVersionIds,
            inputKey: \ListSecretVersionIdsRequest.nextToken,
            outputKey: \ListSecretVersionIdsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the secrets that are stored by Secrets Manager in the Amazon Web Services account, not including secrets  that are marked for deletion. To see secrets marked for deletion, use the Secrets Manager console. ListSecrets is eventually consistent, however it might not reflect changes from the last five minutes.  To get the latest information for a specific secret, use DescribeSecret. To list the versions of a secret, use ListSecretVersionIds. To get the secret value from SecretString or SecretBinary,  call GetSecretValue.  For information about finding secrets in the console, see Find secrets in Secrets Manager. Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see Logging Secrets Manager events with CloudTrail.  Required permissions:  secretsmanager:ListSecrets.  For more information, see  IAM policy actions for Secrets Manager and Authentication  and access control in Secrets Manager.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSecretsPaginator<Result>(
        _ input: ListSecretsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSecretsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSecrets,
            inputKey: \ListSecretsRequest.nextToken,
            outputKey: \ListSecretsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSecretsPaginator(
        _ input: ListSecretsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSecretsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSecrets,
            inputKey: \ListSecretsRequest.nextToken,
            outputKey: \ListSecretsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension SecretsManager.ListSecretVersionIdsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecretsManager.ListSecretVersionIdsRequest {
        return .init(
            includeDeprecated: self.includeDeprecated,
            maxResults: self.maxResults,
            nextToken: token,
            secretId: self.secretId
        )
    }
}

extension SecretsManager.ListSecretsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecretsManager.ListSecretsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortOrder: self.sortOrder
        )
    }
}
