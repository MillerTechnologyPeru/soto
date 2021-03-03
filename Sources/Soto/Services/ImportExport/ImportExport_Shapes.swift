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

import Foundation
import SotoCore

extension ImportExport {
    // MARK: Enums

    public enum JobType: String, CustomStringConvertible, Codable {
        case export = "Export"
        case `import` = "Import"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Artifact: AWSDecodableShape {
        public let description: String?
        public let url: String?

        public init(description: String? = nil, url: String? = nil) {
            self.description = description
            self.url = url
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case url = "URL"
        }
    }

    public struct CancelJobInput: AWSEncodableShape {
        public let aPIVersion: String?
        public let jobId: String

        public init(aPIVersion: String? = nil, jobId: String) {
            self.aPIVersion = aPIVersion
            self.jobId = jobId
        }

        private enum CodingKeys: String, CodingKey {
            case aPIVersion = "APIVersion"
            case jobId = "JobId"
        }
    }

    public struct CancelJobOutput: AWSDecodableShape {
        public let success: Bool?

        public init(success: Bool? = nil) {
            self.success = success
        }

        private enum CodingKeys: String, CodingKey {
            case success = "Success"
        }
    }

    public struct CreateJobInput: AWSEncodableShape {
        public let aPIVersion: String?
        public let jobType: JobType
        public let manifest: String
        public let manifestAddendum: String?
        public let validateOnly: Bool

        public init(aPIVersion: String? = nil, jobType: JobType, manifest: String, manifestAddendum: String? = nil, validateOnly: Bool) {
            self.aPIVersion = aPIVersion
            self.jobType = jobType
            self.manifest = manifest
            self.manifestAddendum = manifestAddendum
            self.validateOnly = validateOnly
        }

        private enum CodingKeys: String, CodingKey {
            case aPIVersion = "APIVersion"
            case jobType = "JobType"
            case manifest = "Manifest"
            case manifestAddendum = "ManifestAddendum"
            case validateOnly = "ValidateOnly"
        }
    }

    public struct CreateJobOutput: AWSDecodableShape {
        @OptionalCustomCoding<StandardArrayCoder>
        public var artifactList: [Artifact]?
        public let jobId: String?
        public let jobType: JobType?
        public let signature: String?
        public let signatureFileContents: String?
        public let warningMessage: String?

        public init(artifactList: [Artifact]? = nil, jobId: String? = nil, jobType: JobType? = nil, signature: String? = nil, signatureFileContents: String? = nil, warningMessage: String? = nil) {
            self.artifactList = artifactList
            self.jobId = jobId
            self.jobType = jobType
            self.signature = signature
            self.signatureFileContents = signatureFileContents
            self.warningMessage = warningMessage
        }

        private enum CodingKeys: String, CodingKey {
            case artifactList = "ArtifactList"
            case jobId = "JobId"
            case jobType = "JobType"
            case signature = "Signature"
            case signatureFileContents = "SignatureFileContents"
            case warningMessage = "WarningMessage"
        }
    }

    public struct GetShippingLabelInput: AWSEncodableShape {
        public let aPIVersion: String?
        public let city: String?
        public let company: String?
        public let country: String?
        @CustomCoding<StandardArrayCoder>
        public var jobIds: [String]
        public let name: String?
        public let phoneNumber: String?
        public let postalCode: String?
        public let stateOrProvince: String?
        public let street1: String?
        public let street2: String?
        public let street3: String?

        public init(aPIVersion: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, jobIds: [String], name: String? = nil, phoneNumber: String? = nil, postalCode: String? = nil, stateOrProvince: String? = nil, street1: String? = nil, street2: String? = nil, street3: String? = nil) {
            self.aPIVersion = aPIVersion
            self.city = city
            self.company = company
            self.country = country
            self.jobIds = jobIds
            self.name = name
            self.phoneNumber = phoneNumber
            self.postalCode = postalCode
            self.stateOrProvince = stateOrProvince
            self.street1 = street1
            self.street2 = street2
            self.street3 = street3
        }

        private enum CodingKeys: String, CodingKey {
            case aPIVersion = "APIVersion"
            case city
            case company
            case country
            case jobIds
            case name
            case phoneNumber
            case postalCode
            case stateOrProvince
            case street1
            case street2
            case street3
        }
    }

    public struct GetShippingLabelOutput: AWSDecodableShape {
        public let shippingLabelURL: String?
        public let warning: String?

        public init(shippingLabelURL: String? = nil, warning: String? = nil) {
            self.shippingLabelURL = shippingLabelURL
            self.warning = warning
        }

        private enum CodingKeys: String, CodingKey {
            case shippingLabelURL = "ShippingLabelURL"
            case warning = "Warning"
        }
    }

    public struct GetStatusInput: AWSEncodableShape {
        public let aPIVersion: String?
        public let jobId: String

        public init(aPIVersion: String? = nil, jobId: String) {
            self.aPIVersion = aPIVersion
            self.jobId = jobId
        }

        private enum CodingKeys: String, CodingKey {
            case aPIVersion = "APIVersion"
            case jobId = "JobId"
        }
    }

    public struct GetStatusOutput: AWSDecodableShape {
        @OptionalCustomCoding<StandardArrayCoder>
        public var artifactList: [Artifact]?
        public let carrier: String?
        public let creationDate: Date?
        public let currentManifest: String?
        public let errorCount: Int?
        public let jobId: String?
        public let jobType: JobType?
        public let locationCode: String?
        public let locationMessage: String?
        public let logBucket: String?
        public let logKey: String?
        public let progressCode: String?
        public let progressMessage: String?
        public let signature: String?
        public let signatureFileContents: String?
        public let trackingNumber: String?

        public init(artifactList: [Artifact]? = nil, carrier: String? = nil, creationDate: Date? = nil, currentManifest: String? = nil, errorCount: Int? = nil, jobId: String? = nil, jobType: JobType? = nil, locationCode: String? = nil, locationMessage: String? = nil, logBucket: String? = nil, logKey: String? = nil, progressCode: String? = nil, progressMessage: String? = nil, signature: String? = nil, signatureFileContents: String? = nil, trackingNumber: String? = nil) {
            self.artifactList = artifactList
            self.carrier = carrier
            self.creationDate = creationDate
            self.currentManifest = currentManifest
            self.errorCount = errorCount
            self.jobId = jobId
            self.jobType = jobType
            self.locationCode = locationCode
            self.locationMessage = locationMessage
            self.logBucket = logBucket
            self.logKey = logKey
            self.progressCode = progressCode
            self.progressMessage = progressMessage
            self.signature = signature
            self.signatureFileContents = signatureFileContents
            self.trackingNumber = trackingNumber
        }

        private enum CodingKeys: String, CodingKey {
            case artifactList = "ArtifactList"
            case carrier = "Carrier"
            case creationDate = "CreationDate"
            case currentManifest = "CurrentManifest"
            case errorCount = "ErrorCount"
            case jobId = "JobId"
            case jobType = "JobType"
            case locationCode = "LocationCode"
            case locationMessage = "LocationMessage"
            case logBucket = "LogBucket"
            case logKey = "LogKey"
            case progressCode = "ProgressCode"
            case progressMessage = "ProgressMessage"
            case signature = "Signature"
            case signatureFileContents = "SignatureFileContents"
            case trackingNumber = "TrackingNumber"
        }
    }

    public struct Job: AWSDecodableShape {
        public let creationDate: Date?
        public let isCanceled: Bool?
        public let jobId: String?
        public let jobType: JobType?

        public init(creationDate: Date? = nil, isCanceled: Bool? = nil, jobId: String? = nil, jobType: JobType? = nil) {
            self.creationDate = creationDate
            self.isCanceled = isCanceled
            self.jobId = jobId
            self.jobType = jobType
        }

        private enum CodingKeys: String, CodingKey {
            case creationDate = "CreationDate"
            case isCanceled = "IsCanceled"
            case jobId = "JobId"
            case jobType = "JobType"
        }
    }

    public struct ListJobsInput: AWSEncodableShape {
        public let aPIVersion: String?
        public let marker: String?
        public let maxJobs: Int?

        public init(aPIVersion: String? = nil, marker: String? = nil, maxJobs: Int? = nil) {
            self.aPIVersion = aPIVersion
            self.marker = marker
            self.maxJobs = maxJobs
        }

        private enum CodingKeys: String, CodingKey {
            case aPIVersion = "APIVersion"
            case marker = "Marker"
            case maxJobs = "MaxJobs"
        }
    }

    public struct ListJobsOutput: AWSDecodableShape {
        public let isTruncated: Bool?
        @OptionalCustomCoding<StandardArrayCoder>
        public var jobs: [Job]?

        public init(isTruncated: Bool? = nil, jobs: [Job]? = nil) {
            self.isTruncated = isTruncated
            self.jobs = jobs
        }

        private enum CodingKeys: String, CodingKey {
            case isTruncated = "IsTruncated"
            case jobs = "Jobs"
        }
    }

    public struct UpdateJobInput: AWSEncodableShape {
        public let aPIVersion: String?
        public let jobId: String
        public let jobType: JobType
        public let manifest: String
        public let validateOnly: Bool

        public init(aPIVersion: String? = nil, jobId: String, jobType: JobType, manifest: String, validateOnly: Bool) {
            self.aPIVersion = aPIVersion
            self.jobId = jobId
            self.jobType = jobType
            self.manifest = manifest
            self.validateOnly = validateOnly
        }

        private enum CodingKeys: String, CodingKey {
            case aPIVersion = "APIVersion"
            case jobId = "JobId"
            case jobType = "JobType"
            case manifest = "Manifest"
            case validateOnly = "ValidateOnly"
        }
    }

    public struct UpdateJobOutput: AWSDecodableShape {
        @OptionalCustomCoding<StandardArrayCoder>
        public var artifactList: [Artifact]?
        public let success: Bool?
        public let warningMessage: String?

        public init(artifactList: [Artifact]? = nil, success: Bool? = nil, warningMessage: String? = nil) {
            self.artifactList = artifactList
            self.success = success
            self.warningMessage = warningMessage
        }

        private enum CodingKeys: String, CodingKey {
            case artifactList = "ArtifactList"
            case success = "Success"
            case warningMessage = "WarningMessage"
        }
    }
}
