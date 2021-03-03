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

/// Error enum for ACM
public struct ACMErrorType: AWSErrorType {
    enum Code: String {
        case invalidArgsException = "InvalidArgsException"
        case invalidArnException = "InvalidArnException"
        case invalidDomainValidationOptionsException = "InvalidDomainValidationOptionsException"
        case invalidParameterException = "InvalidParameterException"
        case invalidStateException = "InvalidStateException"
        case invalidTagException = "InvalidTagException"
        case limitExceededException = "LimitExceededException"
        case requestInProgressException = "RequestInProgressException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tagPolicyException = "TagPolicyException"
        case tooManyTagsException = "TooManyTagsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ACM
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

    /// One or more of of request parameters specified is not valid.
    public static var invalidArgsException: Self { .init(.invalidArgsException) }
    /// The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    public static var invalidArnException: Self { .init(.invalidArnException) }
    /// One or more values in the DomainValidationOption structure is incorrect.
    public static var invalidDomainValidationOptionsException: Self { .init(.invalidDomainValidationOptionsException) }
    /// An input parameter was invalid.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// Processing has reached an invalid state.
    public static var invalidStateException: Self { .init(.invalidStateException) }
    /// One or both of the values that make up the key-value pair is not valid. For example, you cannot specify a tag value that begins with aws:.
    public static var invalidTagException: Self { .init(.invalidTagException) }
    /// An ACM quota has been exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The certificate request is in process and the certificate in your account has not yet been issued.
    public static var requestInProgressException: Self { .init(.requestInProgressException) }
    /// The certificate is in use by another AWS service in the caller's account. Remove the association and try again.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// A specified tag did not comply with an existing tag policy and was rejected.
    public static var tagPolicyException: Self { .init(.tagPolicyException) }
    /// The request contains too many tags. Try the request again with fewer tags.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
}

extension ACMErrorType: Equatable {
    public static func == (lhs: ACMErrorType, rhs: ACMErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ACMErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
