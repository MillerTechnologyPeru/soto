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

/// Error enum for AmplifyUIBuilder
public struct AmplifyUIBuilderErrorType: AWSErrorType {
    enum Code: String {
        case internalServerException = "InternalServerException"
        case invalidParameterException = "InvalidParameterException"
        case resourceConflictException = "ResourceConflictException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case unauthorizedException = "UnauthorizedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize AmplifyUIBuilder
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

    /// An internal error has occurred. Please retry your request.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// An invalid or out-of-range value was supplied for the input parameter.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// The resource specified in the request conflicts with an existing resource.
    public static var resourceConflictException: Self { .init(.resourceConflictException) }
    /// The requested resource does not exist, or access was denied.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your Amazon Web Services account.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// You don't have permission to perform this operation.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
}

extension AmplifyUIBuilderErrorType: Equatable {
    public static func == (lhs: AmplifyUIBuilderErrorType, rhs: AmplifyUIBuilderErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AmplifyUIBuilderErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
