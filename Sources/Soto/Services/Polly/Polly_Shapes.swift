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

import Foundation
import SotoCore

extension Polly {
    // MARK: Enums

    public enum Engine: String, CustomStringConvertible, Codable, _SotoSendable {
        case neural
        case standard
        public var description: String { return self.rawValue }
    }

    public enum Gender: String, CustomStringConvertible, Codable, _SotoSendable {
        case female = "Female"
        case male = "Male"
        public var description: String { return self.rawValue }
    }

    public enum LanguageCode: String, CustomStringConvertible, Codable, _SotoSendable {
        case arb
        case caES = "ca-ES"
        case cmnCN = "cmn-CN"
        case cyGB = "cy-GB"
        case daDK = "da-DK"
        case deAT = "de-AT"
        case deDE = "de-DE"
        case enAU = "en-AU"
        case enGB = "en-GB"
        case enGBWLS = "en-GB-WLS"
        case enIN = "en-IN"
        case enNZ = "en-NZ"
        case enUS = "en-US"
        case enZA = "en-ZA"
        case esES = "es-ES"
        case esMX = "es-MX"
        case esUS = "es-US"
        case frCA = "fr-CA"
        case frFR = "fr-FR"
        case hiIN = "hi-IN"
        case isIS = "is-IS"
        case itIT = "it-IT"
        case jaJP = "ja-JP"
        case koKR = "ko-KR"
        case nbNO = "nb-NO"
        case nlNL = "nl-NL"
        case plPL = "pl-PL"
        case ptBR = "pt-BR"
        case ptPT = "pt-PT"
        case roRO = "ro-RO"
        case ruRU = "ru-RU"
        case svSE = "sv-SE"
        case trTR = "tr-TR"
        case yueCN = "yue-CN"
        public var description: String { return self.rawValue }
    }

    public enum OutputFormat: String, CustomStringConvertible, Codable, _SotoSendable {
        case json
        case mp3
        case oggVorbis = "ogg_vorbis"
        case pcm
        public var description: String { return self.rawValue }
    }

    public enum SpeechMarkType: String, CustomStringConvertible, Codable, _SotoSendable {
        case sentence
        case ssml
        case viseme
        case word
        public var description: String { return self.rawValue }
    }

    public enum TaskStatus: String, CustomStringConvertible, Codable, _SotoSendable {
        case completed
        case failed
        case inProgress
        case scheduled
        public var description: String { return self.rawValue }
    }

    public enum TextType: String, CustomStringConvertible, Codable, _SotoSendable {
        case ssml
        case text
        public var description: String { return self.rawValue }
    }

    public enum VoiceId: String, CustomStringConvertible, Codable, _SotoSendable {
        case aditi = "Aditi"
        case amy = "Amy"
        case aria = "Aria"
        case arlet = "Arlet"
        case arthur = "Arthur"
        case astrid = "Astrid"
        case ayanda = "Ayanda"
        case bianca = "Bianca"
        case brian = "Brian"
        case camila = "Camila"
        case carla = "Carla"
        case carmen = "Carmen"
        case celine = "Celine"
        case chantal = "Chantal"
        case conchita = "Conchita"
        case cristiano = "Cristiano"
        case daniel = "Daniel"
        case dora = "Dora"
        case emma = "Emma"
        case enrique = "Enrique"
        case ewa = "Ewa"
        case filiz = "Filiz"
        case gabrielle = "Gabrielle"
        case geraint = "Geraint"
        case giorgio = "Giorgio"
        case gwyneth = "Gwyneth"
        case hannah = "Hannah"
        case hans = "Hans"
        case hiujin = "Hiujin"
        case ines = "Ines"
        case ivy = "Ivy"
        case jacek = "Jacek"
        case jan = "Jan"
        case joanna = "Joanna"
        case joey = "Joey"
        case justin = "Justin"
        case kajal = "Kajal"
        case karl = "Karl"
        case kendra = "Kendra"
        case kevin = "Kevin"
        case kimberly = "Kimberly"
        case lea = "Lea"
        case liam = "Liam"
        case liv = "Liv"
        case lotte = "Lotte"
        case lucia = "Lucia"
        case lupe = "Lupe"
        case mads = "Mads"
        case maja = "Maja"
        case marlene = "Marlene"
        case mathieu = "Mathieu"
        case matthew = "Matthew"
        case maxim = "Maxim"
        case mia = "Mia"
        case miguel = "Miguel"
        case mizuki = "Mizuki"
        case naja = "Naja"
        case nicole = "Nicole"
        case olivia = "Olivia"
        case pedro = "Pedro"
        case penelope = "Penelope"
        case raveena = "Raveena"
        case ricardo = "Ricardo"
        case ruben = "Ruben"
        case russell = "Russell"
        case salli = "Salli"
        case seoyeon = "Seoyeon"
        case takumi = "Takumi"
        case tatyana = "Tatyana"
        case vicki = "Vicki"
        case vitoria = "Vitoria"
        case zeina = "Zeina"
        case zhiyu = "Zhiyu"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct DeleteLexiconInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "name", location: .uri("Name"))
        ]

        /// The name of the lexicon to delete. Must be an existing lexicon in the region.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        public func validate(name: String) throws {
            try self.validate(self.name, name: "name", parent: name, pattern: "^[0-9A-Za-z]{1,20}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteLexiconOutput: AWSDecodableShape {
        public init() {}
    }

    public struct DescribeVoicesInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "engine", location: .querystring("Engine")),
            AWSMemberEncoding(label: "includeAdditionalLanguageCodes", location: .querystring("IncludeAdditionalLanguageCodes")),
            AWSMemberEncoding(label: "languageCode", location: .querystring("LanguageCode")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("NextToken"))
        ]

        /// Specifies the engine (standard or neural) used by Amazon Polly when processing input text for speech synthesis.
        public let engine: Engine?
        /// Boolean value indicating whether to return any bilingual voices that use the specified language as an additional language. For instance, if you request all languages that use US English (es-US), and there is an Italian voice that speaks both Italian (it-IT) and US English, that voice will be included if you specify yes but not if you specify no.
        public let includeAdditionalLanguageCodes: Bool
        ///  The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned.
        public let languageCode: LanguageCode?
        /// An opaque pagination token returned from the previous DescribeVoices operation. If present, this indicates where to continue the listing.
        public let nextToken: String?

        public init(engine: Engine? = nil, includeAdditionalLanguageCodes: Bool = false, languageCode: LanguageCode? = nil, nextToken: String? = nil) {
            self.engine = engine
            self.includeAdditionalLanguageCodes = includeAdditionalLanguageCodes
            self.languageCode = languageCode
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 4096)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeVoicesOutput: AWSDecodableShape {
        /// The pagination token to use in the next request to continue the listing of voices. NextToken is returned only if the response is truncated.
        public let nextToken: String?
        /// A list of voices with their properties.
        public let voices: [Voice]?

        public init(nextToken: String? = nil, voices: [Voice]? = nil) {
            self.nextToken = nextToken
            self.voices = voices
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case voices = "Voices"
        }
    }

    public struct GetLexiconInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "name", location: .uri("Name"))
        ]

        /// Name of the lexicon.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        public func validate(name: String) throws {
            try self.validate(self.name, name: "name", parent: name, pattern: "^[0-9A-Za-z]{1,20}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetLexiconOutput: AWSDecodableShape {
        /// Lexicon object that provides name and the string content of the lexicon.
        public let lexicon: Lexicon?
        /// Metadata of the lexicon, including phonetic alphabetic used, language code, lexicon ARN, number of lexemes defined in the lexicon, and size of lexicon in bytes.
        public let lexiconAttributes: LexiconAttributes?

        public init(lexicon: Lexicon? = nil, lexiconAttributes: LexiconAttributes? = nil) {
            self.lexicon = lexicon
            self.lexiconAttributes = lexiconAttributes
        }

        private enum CodingKeys: String, CodingKey {
            case lexicon = "Lexicon"
            case lexiconAttributes = "LexiconAttributes"
        }
    }

    public struct GetSpeechSynthesisTaskInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "taskId", location: .uri("TaskId"))
        ]

        /// The Amazon Polly generated identifier for a speech synthesis task.
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        public func validate(name: String) throws {
            try self.validate(self.taskId, name: "taskId", parent: name, pattern: "^[a-zA-Z0-9_-]{1,100}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetSpeechSynthesisTaskOutput: AWSDecodableShape {
        /// SynthesisTask object that provides information from the requested task, including output format, creation time, task status, and so on.
        public let synthesisTask: SynthesisTask?

        public init(synthesisTask: SynthesisTask? = nil) {
            self.synthesisTask = synthesisTask
        }

        private enum CodingKeys: String, CodingKey {
            case synthesisTask = "SynthesisTask"
        }
    }

    public struct Lexicon: AWSDecodableShape {
        /// Lexicon content in string format. The content of a lexicon must be in PLS format.
        public let content: String?
        /// Name of the lexicon.
        public let name: String?

        public init(content: String? = nil, name: String? = nil) {
            self.content = content
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case content = "Content"
            case name = "Name"
        }
    }

    public struct LexiconAttributes: AWSDecodableShape {
        /// Phonetic alphabet used in the lexicon. Valid values are ipa and x-sampa.
        public let alphabet: String?
        /// Language code that the lexicon applies to. A lexicon with a language code such as "en" would be applied to all English languages (en-GB, en-US, en-AUS, en-WLS, and so on.
        public let languageCode: LanguageCode?
        /// Date lexicon was last modified (a timestamp value).
        public let lastModified: Date?
        /// Number of lexemes in the lexicon.
        public let lexemesCount: Int?
        /// Amazon Resource Name (ARN) of the lexicon.
        public let lexiconArn: String?
        /// Total size of the lexicon, in characters.
        public let size: Int?

        public init(alphabet: String? = nil, languageCode: LanguageCode? = nil, lastModified: Date? = nil, lexemesCount: Int? = nil, lexiconArn: String? = nil, size: Int? = nil) {
            self.alphabet = alphabet
            self.languageCode = languageCode
            self.lastModified = lastModified
            self.lexemesCount = lexemesCount
            self.lexiconArn = lexiconArn
            self.size = size
        }

        private enum CodingKeys: String, CodingKey {
            case alphabet = "Alphabet"
            case languageCode = "LanguageCode"
            case lastModified = "LastModified"
            case lexemesCount = "LexemesCount"
            case lexiconArn = "LexiconArn"
            case size = "Size"
        }
    }

    public struct LexiconDescription: AWSDecodableShape {
        /// Provides lexicon metadata.
        public let attributes: LexiconAttributes?
        /// Name of the lexicon.
        public let name: String?

        public init(attributes: LexiconAttributes? = nil, name: String? = nil) {
            self.attributes = attributes
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "Attributes"
            case name = "Name"
        }
    }

    public struct ListLexiconsInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "nextToken", location: .querystring("NextToken"))
        ]

        /// An opaque pagination token returned from previous ListLexicons operation. If present, indicates where to continue the list of lexicons.
        public let nextToken: String?

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 4096)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListLexiconsOutput: AWSDecodableShape {
        /// A list of lexicon names and attributes.
        public let lexicons: [LexiconDescription]?
        /// The pagination token to use in the next request to continue the listing of lexicons. NextToken is returned only if the response is truncated.
        public let nextToken: String?

        public init(lexicons: [LexiconDescription]? = nil, nextToken: String? = nil) {
            self.lexicons = lexicons
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case lexicons = "Lexicons"
            case nextToken = "NextToken"
        }
    }

    public struct ListSpeechSynthesisTasksInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("MaxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("NextToken")),
            AWSMemberEncoding(label: "status", location: .querystring("Status"))
        ]

        /// Maximum number of speech synthesis tasks returned in a List operation.
        public let maxResults: Int?
        /// The pagination token to use in the next request to continue the listing of speech synthesis tasks.
        public let nextToken: String?
        /// Status of the speech synthesis tasks returned in a List operation
        public let status: TaskStatus?

        public init(maxResults: Int? = nil, nextToken: String? = nil, status: TaskStatus? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.status = status
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 4096)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListSpeechSynthesisTasksOutput: AWSDecodableShape {
        /// An opaque pagination token returned from the previous List operation in this request. If present, this indicates where to continue the listing.
        public let nextToken: String?
        /// List of SynthesisTask objects that provides information from the specified task in the list request, including output format, creation time, task status, and so on.
        public let synthesisTasks: [SynthesisTask]?

        public init(nextToken: String? = nil, synthesisTasks: [SynthesisTask]? = nil) {
            self.nextToken = nextToken
            self.synthesisTasks = synthesisTasks
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case synthesisTasks = "SynthesisTasks"
        }
    }

    public struct PutLexiconInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "name", location: .uri("Name"))
        ]

        /// Content of the PLS lexicon as string data.
        public let content: String
        /// Name of the lexicon. The name must follow the regular express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive alphanumeric string up to 20 characters long.
        public let name: String

        public init(content: String, name: String) {
            self.content = content
            self.name = name
        }

        public func validate(name: String) throws {
            try self.validate(self.name, name: "name", parent: name, pattern: "^[0-9A-Za-z]{1,20}$")
        }

        private enum CodingKeys: String, CodingKey {
            case content = "Content"
        }
    }

    public struct PutLexiconOutput: AWSDecodableShape {
        public init() {}
    }

    public struct StartSpeechSynthesisTaskInput: AWSEncodableShape {
        /// Specifies the engine (standard or neural) for Amazon Polly to use when processing input text for speech synthesis. Using a voice that is not supported for the engine selected will result in an error.
        public let engine: Engine?
        /// Optional language code for the Speech Synthesis request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly uses the default language of the bilingual voice. The default language for any voice is the one returned by the DescribeVoices operation for the LanguageCode parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
        public let languageCode: LanguageCode?
        /// List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice.
        public let lexiconNames: [String]?
        /// The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.
        public let outputFormat: OutputFormat
        /// Amazon S3 bucket name to which the output file will be saved.
        public let outputS3BucketName: String
        /// The Amazon S3 key prefix for the output speech file.
        public let outputS3KeyPrefix: String?
        /// The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", and "24000". The default value for standard voices is "22050". The default value for neural voices is "24000". Valid values for pcm are "8000" and "16000" The default value is "16000".
        public let sampleRate: String?
        /// ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.
        public let snsTopicArn: String?
        /// The type of speech marks returned for the input text.
        public let speechMarkTypes: [SpeechMarkType]?
        /// The input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text.
        public let text: String
        /// Specifies whether the input text is plain text or SSML. The default value is plain text.
        public let textType: TextType?
        /// Voice ID to use for the synthesis.
        public let voiceId: VoiceId

        public init(engine: Engine? = nil, languageCode: LanguageCode? = nil, lexiconNames: [String]? = nil, outputFormat: OutputFormat, outputS3BucketName: String, outputS3KeyPrefix: String? = nil, sampleRate: String? = nil, snsTopicArn: String? = nil, speechMarkTypes: [SpeechMarkType]? = nil, text: String, textType: TextType? = nil, voiceId: VoiceId) {
            self.engine = engine
            self.languageCode = languageCode
            self.lexiconNames = lexiconNames
            self.outputFormat = outputFormat
            self.outputS3BucketName = outputS3BucketName
            self.outputS3KeyPrefix = outputS3KeyPrefix
            self.sampleRate = sampleRate
            self.snsTopicArn = snsTopicArn
            self.speechMarkTypes = speechMarkTypes
            self.text = text
            self.textType = textType
            self.voiceId = voiceId
        }

        public func validate(name: String) throws {
            try self.lexiconNames?.forEach {
                try validate($0, name: "lexiconNames[]", parent: name, pattern: "^[0-9A-Za-z]{1,20}$")
            }
            try self.validate(self.lexiconNames, name: "lexiconNames", parent: name, max: 5)
            try self.validate(self.outputS3BucketName, name: "outputS3BucketName", parent: name, pattern: "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$")
            try self.validate(self.outputS3KeyPrefix, name: "outputS3KeyPrefix", parent: name, pattern: "^[0-9a-zA-Z\\/\\!\\-_\\.\\*\\'\\(\\):;\\$@=+\\,\\?&]{0,800}$")
            try self.validate(self.snsTopicArn, name: "snsTopicArn", parent: name, pattern: "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:[a-z0-9_-]{1,50}:\\d{12}:[a-zA-Z0-9_-]{1,256}$")
            try self.validate(self.speechMarkTypes, name: "speechMarkTypes", parent: name, max: 4)
        }

        private enum CodingKeys: String, CodingKey {
            case engine = "Engine"
            case languageCode = "LanguageCode"
            case lexiconNames = "LexiconNames"
            case outputFormat = "OutputFormat"
            case outputS3BucketName = "OutputS3BucketName"
            case outputS3KeyPrefix = "OutputS3KeyPrefix"
            case sampleRate = "SampleRate"
            case snsTopicArn = "SnsTopicArn"
            case speechMarkTypes = "SpeechMarkTypes"
            case text = "Text"
            case textType = "TextType"
            case voiceId = "VoiceId"
        }
    }

    public struct StartSpeechSynthesisTaskOutput: AWSDecodableShape {
        /// SynthesisTask object that provides information and attributes about a newly submitted speech synthesis task.
        public let synthesisTask: SynthesisTask?

        public init(synthesisTask: SynthesisTask? = nil) {
            self.synthesisTask = synthesisTask
        }

        private enum CodingKeys: String, CodingKey {
            case synthesisTask = "SynthesisTask"
        }
    }

    public struct SynthesisTask: AWSDecodableShape {
        /// Timestamp for the time the synthesis task was started.
        public let creationTime: Date?
        /// Specifies the engine (standard or neural) for Amazon Polly to use when processing input text for speech synthesis. Using a voice that is not supported for the engine selected will result in an error.
        public let engine: Engine?
        /// Optional language code for a synthesis task. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly uses the default language of the bilingual voice. The default language for any voice is the one returned by the DescribeVoices operation for the LanguageCode parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
        public let languageCode: LanguageCode?
        /// List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice.
        public let lexiconNames: [String]?
        /// The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.
        public let outputFormat: OutputFormat?
        /// Pathway for the output speech file.
        public let outputUri: String?
        /// Number of billable characters synthesized.
        public let requestCharacters: Int?
        /// The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", and "24000". The default value for standard voices is "22050". The default value for neural voices is "24000". Valid values for pcm are "8000" and "16000" The default value is "16000".
        public let sampleRate: String?
        /// ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.
        public let snsTopicArn: String?
        /// The type of speech marks returned for the input text.
        public let speechMarkTypes: [SpeechMarkType]?
        /// The Amazon Polly generated identifier for a speech synthesis task.
        public let taskId: String?
        /// Current status of the individual speech synthesis task.
        public let taskStatus: TaskStatus?
        /// Reason for the current status of a specific speech synthesis task, including errors if the task has failed.
        public let taskStatusReason: String?
        /// Specifies whether the input text is plain text or SSML. The default value is plain text.
        public let textType: TextType?
        /// Voice ID to use for the synthesis.
        public let voiceId: VoiceId?

        public init(creationTime: Date? = nil, engine: Engine? = nil, languageCode: LanguageCode? = nil, lexiconNames: [String]? = nil, outputFormat: OutputFormat? = nil, outputUri: String? = nil, requestCharacters: Int? = nil, sampleRate: String? = nil, snsTopicArn: String? = nil, speechMarkTypes: [SpeechMarkType]? = nil, taskId: String? = nil, taskStatus: TaskStatus? = nil, taskStatusReason: String? = nil, textType: TextType? = nil, voiceId: VoiceId? = nil) {
            self.creationTime = creationTime
            self.engine = engine
            self.languageCode = languageCode
            self.lexiconNames = lexiconNames
            self.outputFormat = outputFormat
            self.outputUri = outputUri
            self.requestCharacters = requestCharacters
            self.sampleRate = sampleRate
            self.snsTopicArn = snsTopicArn
            self.speechMarkTypes = speechMarkTypes
            self.taskId = taskId
            self.taskStatus = taskStatus
            self.taskStatusReason = taskStatusReason
            self.textType = textType
            self.voiceId = voiceId
        }

        private enum CodingKeys: String, CodingKey {
            case creationTime = "CreationTime"
            case engine = "Engine"
            case languageCode = "LanguageCode"
            case lexiconNames = "LexiconNames"
            case outputFormat = "OutputFormat"
            case outputUri = "OutputUri"
            case requestCharacters = "RequestCharacters"
            case sampleRate = "SampleRate"
            case snsTopicArn = "SnsTopicArn"
            case speechMarkTypes = "SpeechMarkTypes"
            case taskId = "TaskId"
            case taskStatus = "TaskStatus"
            case taskStatusReason = "TaskStatusReason"
            case textType = "TextType"
            case voiceId = "VoiceId"
        }
    }

    public struct SynthesizeSpeechInput: AWSEncodableShape {
        /// Specifies the engine (standard or neural) for Amazon Polly to use when processing input text for speech synthesis. For information on Amazon Polly voices and which voices are available in standard-only, NTTS-only, and both standard and NTTS formats, see Available Voices.  NTTS-only voices  When using NTTS-only voices such as Kevin (en-US), this parameter is required and must be set to neural. If the engine is not specified, or is set to standard, this will result in an error.  Type: String Valid Values: standard | neural  Required: Yes
        ///   Standard voices  For standard voices, this is not required; the engine parameter defaults to standard. If the engine is not specified, or is set to standard and an NTTS-only voice is selected, this will result in an error.
        public let engine: Engine?
        /// Optional language code for the Synthesize Speech request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly uses the default language of the bilingual voice. The default language for any voice is the one returned by the DescribeVoices operation for the LanguageCode parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
        public let languageCode: LanguageCode?
        /// List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see PutLexicon.
        public let lexiconNames: [String]?
        ///  The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.  When pcm is used, the content returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.
        public let outputFormat: OutputFormat
        /// The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", and "24000". The default value for standard voices is "22050". The default value for neural voices is "24000". Valid values for pcm are "8000" and "16000" The default value is "16000".
        public let sampleRate: String?
        /// The type of speech marks returned for the input text.
        public let speechMarkTypes: [SpeechMarkType]?
        ///  Input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text.
        public let text: String
        ///  Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see Using SSML.
        public let textType: TextType
        ///  Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the DescribeVoices operation.
        public let voiceId: VoiceId

        public init(engine: Engine? = nil, languageCode: LanguageCode? = nil, lexiconNames: [String]? = nil, outputFormat: OutputFormat, sampleRate: String? = nil, speechMarkTypes: [SpeechMarkType]? = nil, text: String, textType: TextType = .text, voiceId: VoiceId) {
            self.engine = engine
            self.languageCode = languageCode
            self.lexiconNames = lexiconNames
            self.outputFormat = outputFormat
            self.sampleRate = sampleRate
            self.speechMarkTypes = speechMarkTypes
            self.text = text
            self.textType = textType
            self.voiceId = voiceId
        }

        public func validate(name: String) throws {
            try self.lexiconNames?.forEach {
                try validate($0, name: "lexiconNames[]", parent: name, pattern: "^[0-9A-Za-z]{1,20}$")
            }
            try self.validate(self.lexiconNames, name: "lexiconNames", parent: name, max: 5)
            try self.validate(self.speechMarkTypes, name: "speechMarkTypes", parent: name, max: 4)
        }

        private enum CodingKeys: String, CodingKey {
            case engine = "Engine"
            case languageCode = "LanguageCode"
            case lexiconNames = "LexiconNames"
            case outputFormat = "OutputFormat"
            case sampleRate = "SampleRate"
            case speechMarkTypes = "SpeechMarkTypes"
            case text = "Text"
            case textType = "TextType"
            case voiceId = "VoiceId"
        }
    }

    public struct SynthesizeSpeechOutput: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "audioStream"
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming]
        public static var _encoding = [
            AWSMemberEncoding(label: "audioStream", location: .body("AudioStream")),
            AWSMemberEncoding(label: "contentType", location: .header("Content-Type")),
            AWSMemberEncoding(label: "requestCharacters", location: .header("x-amzn-RequestCharacters"))
        ]

        ///  Stream containing the synthesized speech.
        public let audioStream: AWSPayload
        ///  Specifies the type audio stream. This should reflect the OutputFormat parameter in your request.    If you request mp3 as the OutputFormat, the ContentType returned is audio/mpeg.    If you request ogg_vorbis as the OutputFormat, the ContentType returned is audio/ogg.    If you request pcm as the OutputFormat, the ContentType returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.    If you request json as the OutputFormat, the ContentType returned is application/x-json-stream.
        public let contentType: String?
        /// Number of characters synthesized.
        public let requestCharacters: Int?

        public init(audioStream: AWSPayload, contentType: String? = nil, requestCharacters: Int? = nil) {
            self.audioStream = audioStream
            self.contentType = contentType
            self.requestCharacters = requestCharacters
        }

        private enum CodingKeys: String, CodingKey {
            case audioStream = "AudioStream"
            case contentType = "Content-Type"
            case requestCharacters = "x-amzn-RequestCharacters"
        }
    }

    public struct Voice: AWSDecodableShape {
        /// Additional codes for languages available for the specified voice in addition to its default language.  For example, the default language for Aditi is Indian English (en-IN) because it was first used for that language. Since Aditi is bilingual and fluent in both Indian English and Hindi, this parameter would show the code hi-IN.
        public let additionalLanguageCodes: [LanguageCode]?
        /// Gender of the voice.
        public let gender: Gender?
        /// Amazon Polly assigned voice ID. This is the ID that you specify when calling the SynthesizeSpeech operation.
        public let id: VoiceId?
        /// Language code of the voice.
        public let languageCode: LanguageCode?
        /// Human readable name of the language in English.
        public let languageName: String?
        /// Name of the voice (for example, Salli, Kendra, etc.). This provides a human readable voice name that you might display in your application.
        public let name: String?
        /// Specifies which engines (standard or neural) that are supported by a given voice.
        public let supportedEngines: [Engine]?

        public init(additionalLanguageCodes: [LanguageCode]? = nil, gender: Gender? = nil, id: VoiceId? = nil, languageCode: LanguageCode? = nil, languageName: String? = nil, name: String? = nil, supportedEngines: [Engine]? = nil) {
            self.additionalLanguageCodes = additionalLanguageCodes
            self.gender = gender
            self.id = id
            self.languageCode = languageCode
            self.languageName = languageName
            self.name = name
            self.supportedEngines = supportedEngines
        }

        private enum CodingKeys: String, CodingKey {
            case additionalLanguageCodes = "AdditionalLanguageCodes"
            case gender = "Gender"
            case id = "Id"
            case languageCode = "LanguageCode"
            case languageName = "LanguageName"
            case name = "Name"
            case supportedEngines = "SupportedEngines"
        }
    }
}
