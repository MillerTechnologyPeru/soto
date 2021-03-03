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

/// Error enum for ElasticsearchService
public struct ElasticsearchServiceErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case baseException = "BaseException"
        case conflictException = "ConflictException"
        case disabledOperationException = "DisabledOperationException"
        case internalException = "InternalException"
        case invalidPaginationTokenException = "InvalidPaginationTokenException"
        case invalidTypeException = "InvalidTypeException"
        case limitExceededException = "LimitExceededException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ElasticsearchService
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

    /// An error occurred because user does not have permissions to access the resource. Returns HTTP status code 403.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// An error occurred while processing the request.
    public static var baseException: Self { .init(.baseException) }
    /// An error occurred because the client attempts to remove a resource that is currently in use. Returns HTTP status code 409.
    public static var conflictException: Self { .init(.conflictException) }
    /// An error occured because the client wanted to access a not supported operation. Gives http status code of 409.
    public static var disabledOperationException: Self { .init(.disabledOperationException) }
    /// The request processing has failed because of an unknown error, exception or failure (the failure is internal to the service) . Gives http status code of 500.
    public static var internalException: Self { .init(.internalException) }
    /// The request processing has failed because of invalid pagination token provided by customer. Returns an HTTP status code of 400.
    public static var invalidPaginationTokenException: Self { .init(.invalidPaginationTokenException) }
    /// An exception for trying to create or access sub-resource that is either invalid or not supported. Gives http status code of 409.
    public static var invalidTypeException: Self { .init(.invalidTypeException) }
    /// An exception for trying to create more than allowed resources or sub-resources. Gives http status code of 409.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// An exception for creating a resource that already exists. Gives http status code of 400.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// An exception for accessing or deleting a resource that does not exist. Gives http status code of 400.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// An exception for missing / invalid input fields. Gives http status code of 400.
    public static var validationException: Self { .init(.validationException) }
}

extension ElasticsearchServiceErrorType: Equatable {
    public static func == (lhs: ElasticsearchServiceErrorType, rhs: ElasticsearchServiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ElasticsearchServiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
