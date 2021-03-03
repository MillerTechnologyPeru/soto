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

import SotoCore

/// Error enum for SecurityHub
public struct SecurityHubErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case internalException = "InternalException"
        case invalidAccessException = "InvalidAccessException"
        case invalidInputException = "InvalidInputException"
        case limitExceededException = "LimitExceededException"
        case resourceConflictException = "ResourceConflictException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SecurityHub
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

    /// You don't have permission to perform the action specified in the request.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Internal server error.
    public static var internalException: Self { .init(.internalException) }
    /// There is an issue with the account used to make the request. Either Security Hub is not enabled for the account, or the account does not have permission to perform this action.
    public static var invalidAccessException: Self { .init(.invalidAccessException) }
    /// The request was rejected because you supplied an invalid or out-of-range value for an input parameter.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// The request was rejected because it attempted to create resources beyond the current AWS account or throttling limits. The error code describes the limit exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The resource specified in the request conflicts with an existing resource.
    public static var resourceConflictException: Self { .init(.resourceConflictException) }
    /// The request was rejected because we can't find the specified resource.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension SecurityHubErrorType: Equatable {
    public static func == (lhs: SecurityHubErrorType, rhs: SecurityHubErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SecurityHubErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
