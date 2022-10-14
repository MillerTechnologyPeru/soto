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

/// Error enum for ConnectCases
public struct ConnectCasesErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ConnectCases
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

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request. See the accompanying error message for details.
    public static var conflictException: Self { .init(.conflictException) }
    /// We couldn't process your request because of an issue with the server. Try again later.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// We couldn't find the requested resource. Check that your resources exists and were created in the same Amazon Web Services Region as your request, and try your request again.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The service quota has been exceeded. For a list of service quotas, see Amazon Connect Service Quotas in the Amazon Connect Administrator Guide.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The rate has been exceeded for this API. Please try again after a few minutes.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The request isn't valid. Check the syntax and try again.
    public static var validationException: Self { .init(.validationException) }
}

extension ConnectCasesErrorType: Equatable {
    public static func == (lhs: ConnectCasesErrorType, rhs: ConnectCasesErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ConnectCasesErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
