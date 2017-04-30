/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/assistant/embedded/v1alpha1/embedded_assistant.proto
 *
 */

// Copyright 2017 Google Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

/// Specifies how to process the `ConverseRequest` messages.
public struct Google_Assistant_Embedded_V1alpha1_ConverseConfig: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ConverseConfig"

  /// *Required* Specifies how to process the subsequent incoming audio.
  public var audioInConfig: Google_Assistant_Embedded_V1alpha1_AudioInConfig {
    get {return _storage._audioInConfig ?? Google_Assistant_Embedded_V1alpha1_AudioInConfig()}
    set {_uniqueStorage()._audioInConfig = newValue}
  }
  public var hasAudioInConfig: Bool {
    return _storage._audioInConfig != nil
  }
  public mutating func clearAudioInConfig() {
    _storage._audioInConfig = nil
  }

  /// *Required* Specifies how to format the audio that will be returned.
  public var audioOutConfig: Google_Assistant_Embedded_V1alpha1_AudioOutConfig {
    get {return _storage._audioOutConfig ?? Google_Assistant_Embedded_V1alpha1_AudioOutConfig()}
    set {_uniqueStorage()._audioOutConfig = newValue}
  }
  public var hasAudioOutConfig: Bool {
    return _storage._audioOutConfig != nil
  }
  public mutating func clearAudioOutConfig() {
    _storage._audioOutConfig = nil
  }

  /// *Required* Represents the current dialog state.
  public var converseState: Google_Assistant_Embedded_V1alpha1_ConverseState {
    get {return _storage._converseState ?? Google_Assistant_Embedded_V1alpha1_ConverseState()}
    set {_uniqueStorage()._converseState = newValue}
  }
  public var hasConverseState: Bool {
    return _storage._converseState != nil
  }
  public mutating func clearConverseState() {
    _storage._converseState = nil
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._audioInConfig)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._audioOutConfig)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._converseState)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._audioInConfig {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._audioOutConfig {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._converseState {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass()
}

/// Specifies how to process the `audio_in` data that will be provided in
/// subsequent requests. For recommended settings, see the Google Assistant SDK
/// [best practices](https://developers.google.com/assistant/best-practices).
public struct Google_Assistant_Embedded_V1alpha1_AudioInConfig: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".AudioInConfig"

  /// *Required* Encoding of audio data sent in all `audio_in` messages.
  public var encoding: Google_Assistant_Embedded_V1alpha1_AudioInConfig.Encoding = Google_Assistant_Embedded_V1alpha1_AudioInConfig.Encoding.encodingUnspecified

  /// *Required* Sample rate (in Hertz) of the audio data sent in all `audio_in`
  /// messages. Valid values are from 16000-24000, but 16000 is optimal.
  /// For best results, set the sampling rate of the audio source to 16000 Hz.
  /// If that's not possible, use the native sample rate of the audio source
  /// (instead of re-sampling).
  public var sampleRateHertz: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Audio encoding of the data sent in the audio message.
  /// Audio must be one-channel (mono). The only language supported is "en-US".
  public enum Encoding: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Not specified. Will return result [google.rpc.Code.INVALID_ARGUMENT][].
    case encodingUnspecified // = 0

    /// Uncompressed 16-bit signed little-endian samples (Linear PCM).
    /// This encoding includes no header, only the raw audio bytes.
    case linear16 // = 1

    /// [`FLAC`](https://xiph.org/flac/documentation.html) (Free Lossless Audio
    /// Codec) is the recommended encoding because it is
    /// lossless--therefore recognition is not compromised--and
    /// requires only about half the bandwidth of `LINEAR16`. This encoding
    /// includes the `FLAC` stream header followed by audio data. It supports
    /// 16-bit and 24-bit samples, however, not all fields in `STREAMINFO` are
    /// supported.
    case flac // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .encodingUnspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .encodingUnspecified
      case 1: self = .linear16
      case 2: self = .flac
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .encodingUnspecified: return 0
      case .linear16: return 1
      case .flac: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.encoding)
      case 2: try decoder.decodeSingularInt32Field(value: &self.sampleRateHertz)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.encoding != Google_Assistant_Embedded_V1alpha1_AudioInConfig.Encoding.encodingUnspecified {
      try visitor.visitSingularEnumField(value: self.encoding, fieldNumber: 1)
    }
    if self.sampleRateHertz != 0 {
      try visitor.visitSingularInt32Field(value: self.sampleRateHertz, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Specifies the desired format for the server to use when it returns
/// `audio_out` messages.
public struct Google_Assistant_Embedded_V1alpha1_AudioOutConfig: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".AudioOutConfig"

  /// *Required* The encoding of audio data to be returned in all `audio_out`
  /// messages.
  public var encoding: Google_Assistant_Embedded_V1alpha1_AudioOutConfig.Encoding = Google_Assistant_Embedded_V1alpha1_AudioOutConfig.Encoding.encodingUnspecified

  /// *Required* The sample rate in Hertz of the audio data returned in
  /// `audio_out` messages. Valid values are: 16000-24000.
  public var sampleRateHertz: Int32 = 0

  /// *Required* Current volume setting of the device's audio output.
  /// Valid values are 1 to 100 (corresponding to 1% to 100%).
  public var volumePercentage: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Audio encoding of the data returned in the audio message. All encodings are
  /// raw audio bytes with no header, except as indicated below.
  public enum Encoding: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Not specified. Will return result [google.rpc.Code.INVALID_ARGUMENT][].
    case encodingUnspecified // = 0

    /// Uncompressed 16-bit signed little-endian samples (Linear PCM).
    case linear16 // = 1

    /// MP3 audio encoding. The sample rate is encoded in the payload.
    case mp3 // = 2

    /// Opus-encoded audio wrapped in an ogg container. The result will be a
    /// file which can be played natively on Android and in some browsers (such
    /// as Chrome). The quality of the encoding is considerably higher than MP3
    /// while using the same bitrate. The sample rate is encoded in the payload.
    case opusInOgg // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .encodingUnspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .encodingUnspecified
      case 1: self = .linear16
      case 2: self = .mp3
      case 3: self = .opusInOgg
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .encodingUnspecified: return 0
      case .linear16: return 1
      case .mp3: return 2
      case .opusInOgg: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.encoding)
      case 2: try decoder.decodeSingularInt32Field(value: &self.sampleRateHertz)
      case 3: try decoder.decodeSingularInt32Field(value: &self.volumePercentage)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.encoding != Google_Assistant_Embedded_V1alpha1_AudioOutConfig.Encoding.encodingUnspecified {
      try visitor.visitSingularEnumField(value: self.encoding, fieldNumber: 1)
    }
    if self.sampleRateHertz != 0 {
      try visitor.visitSingularInt32Field(value: self.sampleRateHertz, fieldNumber: 2)
    }
    if self.volumePercentage != 0 {
      try visitor.visitSingularInt32Field(value: self.volumePercentage, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Provides information about the current dialog state.
public struct Google_Assistant_Embedded_V1alpha1_ConverseState: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ConverseState"

  /// *Required* The `conversation_state` value returned in the prior
  /// `ConverseResponse`. Omit (do not set the field) if there was no prior
  /// `ConverseResponse`. If there was a prior `ConverseResponse`, do not omit
  /// this field; doing so will end that conversation (and this new request will
  /// start a new conversation).
  public var conversationState: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.conversationState)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.conversationState.isEmpty {
      try visitor.visitSingularBytesField(value: self.conversationState, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// The audio containing the assistant's response to the query. Sequential chunks
/// of audio data are received in sequential `ConverseResponse` messages.
public struct Google_Assistant_Embedded_V1alpha1_AudioOut: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".AudioOut"

  /// *Output-only* The audio data containing the assistant's response to the
  /// query. Sequential chunks of audio data are received in sequential
  /// `ConverseResponse` messages.
  public var audioData: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.audioData)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.audioData.isEmpty {
      try visitor.visitSingularBytesField(value: self.audioData, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// The semantic result for the user's spoken query.
public struct Google_Assistant_Embedded_V1alpha1_ConverseResult: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ConverseResult"

  /// *Output-only* The recognized transcript of what the user said.
  public var spokenRequestText: String = String()

  /// *Output-only* The text of the assistant's spoken response. This is only
  /// returned for an IFTTT action.
  public var spokenResponseText: String = String()

  /// *Output-only* State information for subsequent `ConverseRequest`. This
  /// value should be saved in the client and returned in the
  /// `conversation_state` with the next `ConverseRequest`. (The client does not
  /// need to interpret or otherwise use this value.) There is no need to save
  /// this information across device restarts.
  public var conversationState: Data = SwiftProtobuf.Internal.emptyData

  /// *Output-only* Specifies the mode of the microphone after this `Converse`
  /// RPC is processed.
  public var microphoneMode: Google_Assistant_Embedded_V1alpha1_ConverseResult.MicrophoneMode = Google_Assistant_Embedded_V1alpha1_ConverseResult.MicrophoneMode.microphoneModeUnspecified

  /// *Output-only* Updated volume level. The value will be 0 or omitted
  /// (indicating no change) unless a voice command such as "Increase the volume"
  /// or "Set volume level 4" was recognized, in which case the value will be
  /// between 1 and 100 (corresponding to the new volume level of 1% to 100%).
  /// Typically, a client should use this volume level when playing the
  /// `audio_out` data, and retain this value as the current volume level and
  /// supply it in the `AudioOutConfig` of the next `ConverseRequest`. (Some
  /// clients may also implement other ways to allow the current volume level to
  /// be changed, for example, by providing a knob that the user can turn.)
  public var volumePercentage: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Possible states of the microphone after a `Converse` RPC completes.
  public enum MicrophoneMode: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// No mode specified.
    case microphoneModeUnspecified // = 0

    /// The service is not expecting a follow-on question from the user.
    /// The microphone should remain off until the user re-activates it.
    case closeMicrophone // = 1

    /// The service is expecting a follow-on question from the user. The
    /// microphone should be re-opened when the `AudioOut` playback completes
    /// (by starting a new `Converse` RPC call to send the new audio).
    case dialogFollowOn // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .microphoneModeUnspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .microphoneModeUnspecified
      case 1: self = .closeMicrophone
      case 2: self = .dialogFollowOn
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .microphoneModeUnspecified: return 0
      case .closeMicrophone: return 1
      case .dialogFollowOn: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.spokenRequestText)
      case 2: try decoder.decodeSingularStringField(value: &self.spokenResponseText)
      case 3: try decoder.decodeSingularBytesField(value: &self.conversationState)
      case 4: try decoder.decodeSingularEnumField(value: &self.microphoneMode)
      case 5: try decoder.decodeSingularInt32Field(value: &self.volumePercentage)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.spokenRequestText.isEmpty {
      try visitor.visitSingularStringField(value: self.spokenRequestText, fieldNumber: 1)
    }
    if !self.spokenResponseText.isEmpty {
      try visitor.visitSingularStringField(value: self.spokenResponseText, fieldNumber: 2)
    }
    if !self.conversationState.isEmpty {
      try visitor.visitSingularBytesField(value: self.conversationState, fieldNumber: 3)
    }
    if self.microphoneMode != Google_Assistant_Embedded_V1alpha1_ConverseResult.MicrophoneMode.microphoneModeUnspecified {
      try visitor.visitSingularEnumField(value: self.microphoneMode, fieldNumber: 4)
    }
    if self.volumePercentage != 0 {
      try visitor.visitSingularInt32Field(value: self.volumePercentage, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// The top-level message sent by the client. Clients must send at least two, and
/// typically numerous `ConverseRequest` messages. The first message must
/// contain a `config` message and must not contain `audio_in` data. All
/// subsequent messages must contain `audio_in` data and must not contain a
/// `config` message.
public struct Google_Assistant_Embedded_V1alpha1_ConverseRequest: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ConverseRequest"

  /// Exactly one of these fields must be specified in each `ConverseRequest`.
  public var converseRequest: OneOf_ConverseRequest? {
    get {return _storage._converseRequest}
    set {_uniqueStorage()._converseRequest = newValue}
  }

  /// The `config` message provides information to the recognizer that
  /// specifies how to process the request.
  /// The first `ConverseRequest` message must contain a `config` message.
  public var config: Google_Assistant_Embedded_V1alpha1_ConverseConfig {
    get {
      if case .config(let v)? = _storage._converseRequest {return v}
      return Google_Assistant_Embedded_V1alpha1_ConverseConfig()
    }
    set {_uniqueStorage()._converseRequest = .config(newValue)}
  }

  /// The audio data to be recognized. Sequential chunks of audio data are sent
  /// in sequential `ConverseRequest` messages. The first `ConverseRequest`
  /// message must not contain `audio_in` data and all subsequent
  /// `ConverseRequest` messages must contain `audio_in` data. The audio bytes
  /// must be encoded as specified in `AudioInConfig`.
  /// Audio must be sent at approximately real-time (16000 samples per second).
  /// An error will be returned if audio is sent significantly faster or
  /// slower.
  public var audioIn: Data {
    get {
      if case .audioIn(let v)? = _storage._converseRequest {return v}
      return SwiftProtobuf.Internal.emptyData
    }
    set {_uniqueStorage()._converseRequest = .audioIn(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Exactly one of these fields must be specified in each `ConverseRequest`.
  public enum OneOf_ConverseRequest: Equatable {
    /// The `config` message provides information to the recognizer that
    /// specifies how to process the request.
    /// The first `ConverseRequest` message must contain a `config` message.
    case config(Google_Assistant_Embedded_V1alpha1_ConverseConfig)
    /// The audio data to be recognized. Sequential chunks of audio data are sent
    /// in sequential `ConverseRequest` messages. The first `ConverseRequest`
    /// message must not contain `audio_in` data and all subsequent
    /// `ConverseRequest` messages must contain `audio_in` data. The audio bytes
    /// must be encoded as specified in `AudioInConfig`.
    /// Audio must be sent at approximately real-time (16000 samples per second).
    /// An error will be returned if audio is sent significantly faster or
    /// slower.
    case audioIn(Data)

    public static func ==(lhs: Google_Assistant_Embedded_V1alpha1_ConverseRequest.OneOf_ConverseRequest, rhs: Google_Assistant_Embedded_V1alpha1_ConverseRequest.OneOf_ConverseRequest) -> Bool {
      switch (lhs, rhs) {
      case (.config(let l), .config(let r)): return l == r
      case (.audioIn(let l), .audioIn(let r)): return l == r
      default: return false
      }
    }
  }

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1, 2:
          if _storage._converseRequest != nil {
            try decoder.handleConflictingOneOf()
          }
          _storage._converseRequest = try Google_Assistant_Embedded_V1alpha1_ConverseRequest.OneOf_ConverseRequest(byDecodingFrom: &decoder, fieldNumber: fieldNumber)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      try _storage._converseRequest?.traverse(visitor: &visitor)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass()
}

/// The top-level message received by the client. A series of one or more
/// `ConverseResponse` messages are streamed back to the client.
public struct Google_Assistant_Embedded_V1alpha1_ConverseResponse: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ConverseResponse"

  /// Exactly one of these fields will be populated in each `ConverseResponse`.
  public var converseResponse: OneOf_ConverseResponse? {
    get {return _storage._converseResponse}
    set {_uniqueStorage()._converseResponse = newValue}
  }

  /// *Output-only* If set, returns a [google.rpc.Status][google.rpc.Status] message that
  /// specifies the error for the operation.
  /// If an error occurs during processing, this message will be set and there
  /// will be no further messages sent.
  public var error: Google_Rpc_Status {
    get {
      if case .error(let v)? = _storage._converseResponse {return v}
      return Google_Rpc_Status()
    }
    set {_uniqueStorage()._converseResponse = .error(newValue)}
  }

  /// *Output-only* Indicates the type of event.
  public var eventType: Google_Assistant_Embedded_V1alpha1_ConverseResponse.EventType {
    get {
      if case .eventType(let v)? = _storage._converseResponse {return v}
      return Google_Assistant_Embedded_V1alpha1_ConverseResponse.EventType.eventTypeUnspecified
    }
    set {_uniqueStorage()._converseResponse = .eventType(newValue)}
  }

  /// *Output-only* The audio containing the assistant's response to the query.
  public var audioOut: Google_Assistant_Embedded_V1alpha1_AudioOut {
    get {
      if case .audioOut(let v)? = _storage._converseResponse {return v}
      return Google_Assistant_Embedded_V1alpha1_AudioOut()
    }
    set {_uniqueStorage()._converseResponse = .audioOut(newValue)}
  }

  /// *Output-only* The semantic result for the user's spoken query.
  public var result: Google_Assistant_Embedded_V1alpha1_ConverseResult {
    get {
      if case .result(let v)? = _storage._converseResponse {return v}
      return Google_Assistant_Embedded_V1alpha1_ConverseResult()
    }
    set {_uniqueStorage()._converseResponse = .result(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Exactly one of these fields will be populated in each `ConverseResponse`.
  public enum OneOf_ConverseResponse: Equatable {
    /// *Output-only* If set, returns a [google.rpc.Status][google.rpc.Status] message that
    /// specifies the error for the operation.
    /// If an error occurs during processing, this message will be set and there
    /// will be no further messages sent.
    case error(Google_Rpc_Status)
    /// *Output-only* Indicates the type of event.
    case eventType(Google_Assistant_Embedded_V1alpha1_ConverseResponse.EventType)
    /// *Output-only* The audio containing the assistant's response to the query.
    case audioOut(Google_Assistant_Embedded_V1alpha1_AudioOut)
    /// *Output-only* The semantic result for the user's spoken query.
    case result(Google_Assistant_Embedded_V1alpha1_ConverseResult)

    public static func ==(lhs: Google_Assistant_Embedded_V1alpha1_ConverseResponse.OneOf_ConverseResponse, rhs: Google_Assistant_Embedded_V1alpha1_ConverseResponse.OneOf_ConverseResponse) -> Bool {
      switch (lhs, rhs) {
      case (.error(let l), .error(let r)): return l == r
      case (.eventType(let l), .eventType(let r)): return l == r
      case (.audioOut(let l), .audioOut(let r)): return l == r
      case (.result(let l), .result(let r)): return l == r
      default: return false
      }
    }
  }

  /// Indicates the type of event.
  public enum EventType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// No event specified.
    case eventTypeUnspecified // = 0

    /// This event indicates that the server has detected the end of the user's
    /// speech utterance and expects no additional speech. Therefore, the server
    /// will not process additional audio (although it may subsequently return
    /// additional results). The client should stop sending additional audio
    /// data, half-close the gRPC connection, and wait for any additional results
    /// until the server closes the gRPC connection.
    case endOfUtterance // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .eventTypeUnspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .eventTypeUnspecified
      case 1: self = .endOfUtterance
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .eventTypeUnspecified: return 0
      case .endOfUtterance: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1, 2, 3, 5:
          if _storage._converseResponse != nil {
            try decoder.handleConflictingOneOf()
          }
          _storage._converseResponse = try Google_Assistant_Embedded_V1alpha1_ConverseResponse.OneOf_ConverseResponse(byDecodingFrom: &decoder, fieldNumber: fieldNumber)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      try _storage._converseResponse?.traverse(visitor: &visitor)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass()
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.assistant.embedded.v1alpha1"

extension Google_Assistant_Embedded_V1alpha1_ConverseConfig: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "audio_in_config"),
    2: .standard(proto: "audio_out_config"),
    3: .standard(proto: "converse_state"),
  ]

  fileprivate class _StorageClass {
    var _audioInConfig: Google_Assistant_Embedded_V1alpha1_AudioInConfig? = nil
    var _audioOutConfig: Google_Assistant_Embedded_V1alpha1_AudioOutConfig? = nil
    var _converseState: Google_Assistant_Embedded_V1alpha1_ConverseState? = nil

    init() {}

    init(copying source: _StorageClass) {
      _audioInConfig = source._audioInConfig
      _audioOutConfig = source._audioOutConfig
      _converseState = source._converseState
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Google_Assistant_Embedded_V1alpha1_ConverseConfig) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._audioInConfig != other_storage._audioInConfig {return false}
        if _storage._audioOutConfig != other_storage._audioOutConfig {return false}
        if _storage._converseState != other_storage._converseState {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Google_Assistant_Embedded_V1alpha1_AudioInConfig: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "encoding"),
    2: .standard(proto: "sample_rate_hertz"),
  ]

  public func _protobuf_generated_isEqualTo(other: Google_Assistant_Embedded_V1alpha1_AudioInConfig) -> Bool {
    if self.encoding != other.encoding {return false}
    if self.sampleRateHertz != other.sampleRateHertz {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Google_Assistant_Embedded_V1alpha1_AudioInConfig.Encoding: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ENCODING_UNSPECIFIED"),
    1: .same(proto: "LINEAR16"),
    2: .same(proto: "FLAC"),
  ]
}

extension Google_Assistant_Embedded_V1alpha1_AudioOutConfig: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "encoding"),
    2: .standard(proto: "sample_rate_hertz"),
    3: .standard(proto: "volume_percentage"),
  ]

  public func _protobuf_generated_isEqualTo(other: Google_Assistant_Embedded_V1alpha1_AudioOutConfig) -> Bool {
    if self.encoding != other.encoding {return false}
    if self.sampleRateHertz != other.sampleRateHertz {return false}
    if self.volumePercentage != other.volumePercentage {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Google_Assistant_Embedded_V1alpha1_AudioOutConfig.Encoding: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ENCODING_UNSPECIFIED"),
    1: .same(proto: "LINEAR16"),
    2: .same(proto: "MP3"),
    3: .same(proto: "OPUS_IN_OGG"),
  ]
}

extension Google_Assistant_Embedded_V1alpha1_ConverseState: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "conversation_state"),
  ]

  public func _protobuf_generated_isEqualTo(other: Google_Assistant_Embedded_V1alpha1_ConverseState) -> Bool {
    if self.conversationState != other.conversationState {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Google_Assistant_Embedded_V1alpha1_AudioOut: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "audio_data"),
  ]

  public func _protobuf_generated_isEqualTo(other: Google_Assistant_Embedded_V1alpha1_AudioOut) -> Bool {
    if self.audioData != other.audioData {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Google_Assistant_Embedded_V1alpha1_ConverseResult: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "spoken_request_text"),
    2: .standard(proto: "spoken_response_text"),
    3: .standard(proto: "conversation_state"),
    4: .standard(proto: "microphone_mode"),
    5: .standard(proto: "volume_percentage"),
  ]

  public func _protobuf_generated_isEqualTo(other: Google_Assistant_Embedded_V1alpha1_ConverseResult) -> Bool {
    if self.spokenRequestText != other.spokenRequestText {return false}
    if self.spokenResponseText != other.spokenResponseText {return false}
    if self.conversationState != other.conversationState {return false}
    if self.microphoneMode != other.microphoneMode {return false}
    if self.volumePercentage != other.volumePercentage {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Google_Assistant_Embedded_V1alpha1_ConverseResult.MicrophoneMode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "MICROPHONE_MODE_UNSPECIFIED"),
    1: .same(proto: "CLOSE_MICROPHONE"),
    2: .same(proto: "DIALOG_FOLLOW_ON"),
  ]
}

extension Google_Assistant_Embedded_V1alpha1_ConverseRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "config"),
    2: .standard(proto: "audio_in"),
  ]

  fileprivate class _StorageClass {
    var _converseRequest: Google_Assistant_Embedded_V1alpha1_ConverseRequest.OneOf_ConverseRequest?

    init() {}

    init(copying source: _StorageClass) {
      _converseRequest = source._converseRequest
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Google_Assistant_Embedded_V1alpha1_ConverseRequest) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._converseRequest != other_storage._converseRequest {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Google_Assistant_Embedded_V1alpha1_ConverseRequest.OneOf_ConverseRequest {
  fileprivate init?<T: SwiftProtobuf.Decoder>(byDecodingFrom decoder: inout T, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1:
      var value: Google_Assistant_Embedded_V1alpha1_ConverseConfig?
      try decoder.decodeSingularMessageField(value: &value)
      if let value = value {
        self = .config(value)
        return
      }
    case 2:
      var value = Data()
      try decoder.decodeSingularBytesField(value: &value)
      self = .audioIn(value)
      return
    default:
      break
    }
    return nil
  }

  fileprivate func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self {
    case .config(let v):
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    case .audioIn(let v):
      try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
    }
  }
}

extension Google_Assistant_Embedded_V1alpha1_ConverseResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "error"),
    2: .standard(proto: "event_type"),
    3: .standard(proto: "audio_out"),
    5: .same(proto: "result"),
  ]

  fileprivate class _StorageClass {
    var _converseResponse: Google_Assistant_Embedded_V1alpha1_ConverseResponse.OneOf_ConverseResponse?

    init() {}

    init(copying source: _StorageClass) {
      _converseResponse = source._converseResponse
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Google_Assistant_Embedded_V1alpha1_ConverseResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._converseResponse != other_storage._converseResponse {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Google_Assistant_Embedded_V1alpha1_ConverseResponse.OneOf_ConverseResponse {
  fileprivate init?<T: SwiftProtobuf.Decoder>(byDecodingFrom decoder: inout T, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1:
      var value: Google_Rpc_Status?
      try decoder.decodeSingularMessageField(value: &value)
      if let value = value {
        self = .error(value)
        return
      }
    case 2:
      var value = Google_Assistant_Embedded_V1alpha1_ConverseResponse.EventType()
      try decoder.decodeSingularEnumField(value: &value)
      self = .eventType(value)
      return
    case 3:
      var value: Google_Assistant_Embedded_V1alpha1_AudioOut?
      try decoder.decodeSingularMessageField(value: &value)
      if let value = value {
        self = .audioOut(value)
        return
      }
    case 5:
      var value: Google_Assistant_Embedded_V1alpha1_ConverseResult?
      try decoder.decodeSingularMessageField(value: &value)
      if let value = value {
        self = .result(value)
        return
      }
    default:
      break
    }
    return nil
  }

  fileprivate func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self {
    case .error(let v):
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    case .eventType(let v):
      try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
    case .audioOut(let v):
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    case .result(let v):
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
  }
}

extension Google_Assistant_Embedded_V1alpha1_ConverseResponse.EventType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "EVENT_TYPE_UNSPECIFIED"),
    1: .same(proto: "END_OF_UTTERANCE"),
  ]
}
