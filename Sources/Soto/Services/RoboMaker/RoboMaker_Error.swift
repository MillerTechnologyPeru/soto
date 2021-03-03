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

/// Error enum for RoboMaker
public struct RoboMakerErrorType: AWSErrorType {
    enum Code: String {
        case concurrentDeploymentException = "ConcurrentDeploymentException"
        case idempotentParameterMismatchException = "IdempotentParameterMismatchException"
        case internalServerException = "InternalServerException"
        case invalidParameterException = "InvalidParameterException"
        case limitExceededException = "LimitExceededException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize RoboMaker
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

    /// The failure percentage threshold percentage was met.
    public static var concurrentDeploymentException: Self { .init(.concurrentDeploymentException) }
    /// The request uses the same client token as a previous, but non-identical request. Do not reuse a client token with different requests, unless the requests are identical.
    public static var idempotentParameterMismatchException: Self { .init(.idempotentParameterMismatchException) }
    /// AWS RoboMaker experienced a service issue. Try your call again.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// A parameter specified in a request is not valid, is unsupported, or cannot be used. The returned message provides an explanation of the error value.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The specified resource already exists.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// The specified resource does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request has failed due to a temporary failure of the server.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// AWS RoboMaker is temporarily unable to process the request. Try your call again.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension RoboMakerErrorType: Equatable {
    public static func == (lhs: RoboMakerErrorType, rhs: RoboMakerErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension RoboMakerErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
