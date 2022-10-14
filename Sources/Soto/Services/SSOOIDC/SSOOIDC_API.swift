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

@_exported import SotoCore

/// Service object for interacting with AWS SSOOIDC service.
///
/// AWS IAM Identity Center (successor to AWS Single Sign-On) OpenID Connect (OIDC) is a web service that enables a client (such as AWS CLI or a native application) to register with IAM Identity Center. The service also enables the client to fetch the user’s access token upon successful authentication and authorization with IAM Identity Center.  Although AWS Single Sign-On was renamed, the sso and identitystore API namespaces will continue to retain their original name for backward compatibility purposes. For more information, see IAM Identity Center rename.   Considerations for Using This Guide  Before you begin using this guide, we recommend that you first review the following important information about how the IAM Identity Center OIDC service works.   The IAM Identity Center OIDC service currently implements only the portions of the OAuth 2.0 Device Authorization Grant standard (https://tools.ietf.org/html/rfc8628) that are necessary to enable single sign-on authentication with the AWS CLI. Support for other OIDC flows frequently needed for native applications, such as Authorization Code Flow (+ PKCE), will be addressed in future releases.   The service emits only OIDC access tokens, such that obtaining a new token (For example, token refresh) requires explicit user re-authentication.   The access tokens provided by this service grant access to all AWS account entitlements assigned to an IAM Identity Center user, not just a particular application.   The documentation in this guide does not describe the mechanism to convert the access token into AWS Auth (“sigv4”) credentials for use with IAM-protected AWS service endpoints. For more information, see GetRoleCredentials in the IAM Identity Center Portal API Reference Guide.
///  For general information about IAM Identity Center, see What is IAM Identity Center? in the IAM Identity Center User Guide.
public struct SSOOIDC: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SSOOIDC client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "oidc",
            signingName: "awsssooidc",
            serviceProtocol: .restjson,
            apiVersion: "2019-06-10",
            endpoint: endpoint,
            serviceEndpoints: ["ap-east-1": "oidc.ap-east-1.amazonaws.com", "ap-northeast-1": "oidc.ap-northeast-1.amazonaws.com", "ap-northeast-2": "oidc.ap-northeast-2.amazonaws.com", "ap-northeast-3": "oidc.ap-northeast-3.amazonaws.com", "ap-south-1": "oidc.ap-south-1.amazonaws.com", "ap-southeast-1": "oidc.ap-southeast-1.amazonaws.com", "ap-southeast-2": "oidc.ap-southeast-2.amazonaws.com", "ca-central-1": "oidc.ca-central-1.amazonaws.com", "eu-central-1": "oidc.eu-central-1.amazonaws.com", "eu-north-1": "oidc.eu-north-1.amazonaws.com", "eu-south-1": "oidc.eu-south-1.amazonaws.com", "eu-west-1": "oidc.eu-west-1.amazonaws.com", "eu-west-2": "oidc.eu-west-2.amazonaws.com", "eu-west-3": "oidc.eu-west-3.amazonaws.com", "me-south-1": "oidc.me-south-1.amazonaws.com", "sa-east-1": "oidc.sa-east-1.amazonaws.com", "us-east-1": "oidc.us-east-1.amazonaws.com", "us-east-2": "oidc.us-east-2.amazonaws.com", "us-gov-east-1": "oidc.us-gov-east-1.amazonaws.com", "us-gov-west-1": "oidc.us-gov-west-1.amazonaws.com", "us-west-2": "oidc.us-west-2.amazonaws.com"],
            errorType: SSOOIDCErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates and returns an access token for the authorized client. The access token issued will be used to fetch short-term credentials for the assigned roles in the AWS account.
    public func createToken(_ input: CreateTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTokenResponse> {
        return self.client.execute(operation: "CreateToken", path: "/token", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers a client with IAM Identity Center. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.
    public func registerClient(_ input: RegisterClientRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterClientResponse> {
        return self.client.execute(operation: "RegisterClient", path: "/client/register", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initiates device authorization by requesting a pair of verification codes from the authorization service.
    public func startDeviceAuthorization(_ input: StartDeviceAuthorizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDeviceAuthorizationResponse> {
        return self.client.execute(operation: "StartDeviceAuthorization", path: "/device_authorization", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension SSOOIDC {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SSOOIDC, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
