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

/// Error enum for BackupStorage
public struct BackupStorageErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case dataAlreadyExistsException = "DataAlreadyExistsException"
        case illegalArgumentException = "IllegalArgumentException"
        case kmsInvalidKeyUsageException = "KMSInvalidKeyUsageException"
        case notReadableInputStreamException = "NotReadableInputStreamException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case retryableException = "RetryableException"
        case serviceInternalException = "ServiceInternalException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize BackupStorage
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

    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Non-retryable exception. Attempted to create already existing object or chunk. This message contains a checksum of already presented data.
    public static var dataAlreadyExistsException: Self { .init(.dataAlreadyExistsException) }
    /// Non-retryable exception, indicates client error (wrong argument passed to API). See exception message for details.
    public static var illegalArgumentException: Self { .init(.illegalArgumentException) }
    /// Non-retryable exception. Indicates the KMS key usage is incorrect. See exception message for details.
    public static var kmsInvalidKeyUsageException: Self { .init(.kmsInvalidKeyUsageException) }
    /// Retryalble exception. Indicated issues while reading an input stream due to the networking issues or connection drop on the client side.
    public static var notReadableInputStreamException: Self { .init(.notReadableInputStreamException) }
    /// Non-retryable exception. Attempted to make an operation on non-existing or expired resource.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Retryable exception. In general indicates internal failure that can be fixed by retry.
    public static var retryableException: Self { .init(.retryableException) }
    /// Deprecated. To be removed from the model.
    public static var serviceInternalException: Self { .init(.serviceInternalException) }
    /// Retryable exception, indicates internal server error.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// Increased rate over throttling limits. Can be retried with exponential backoff.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension BackupStorageErrorType: Equatable {
    public static func == (lhs: BackupStorageErrorType, rhs: BackupStorageErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension BackupStorageErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}