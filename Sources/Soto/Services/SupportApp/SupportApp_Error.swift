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

/// Error enum for SupportApp
public struct SupportAppErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SupportApp
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// You don't have sufficient permission to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Your request has a conflict. For example, you might receive this error if you try the following:   Add, update, or delete a Slack channel configuration before you add a Slack workspace to your Amazon Web Services account.   Add a Slack channel configuration that already exists in your Amazon Web Services account.   Delete a Slack channel configuration for a live chat channel.   Delete a Slack workspace from your Amazon Web Services account that has an active live chat channel.
    public static var conflictException: Self { .init(.conflictException) }
    /// We can’t process your request right now because of a server issue. Try again later.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The specified resource is missing or doesn't exist, such as an account alias or Slack channel configuration.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Your Service Quotas request exceeds the quota for the service. For example, your Service Quotas request to Amazon Web Services Support App might exceed the maximum number of workspaces or channels per account, or the maximum number of accounts per Slack channel.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// Your request input doesn't meet the constraints that the Amazon Web Services Support App specifies.
    public static var validationException: Self { .init(.validationException) }
}

extension SupportAppErrorType: Equatable {
    public static func == (lhs: SupportAppErrorType, rhs: SupportAppErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SupportAppErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
