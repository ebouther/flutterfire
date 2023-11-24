// Copyright 2023, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#ifndef PIGEON_MESSAGES_G_H_
#define PIGEON_MESSAGES_G_H_
#include <flutter/basic_message_channel.h>
#include <flutter/binary_messenger.h>
#include <flutter/encodable_value.h>
#include <flutter/standard_message_codec.h>

#include <map>
#include <optional>
#include <string>

namespace firebase_storage_windows {

// Generated class from Pigeon.

class FlutterError {
 public:
  explicit FlutterError(const std::string& code) : code_(code) {}
  explicit FlutterError(const std::string& code, const std::string& message)
      : code_(code), message_(message) {}
  explicit FlutterError(const std::string& code, const std::string& message,
                        const flutter::EncodableValue& details)
      : code_(code), message_(message), details_(details) {}

  const std::string& code() const { return code_; }
  const std::string& message() const { return message_; }
  const flutter::EncodableValue& details() const { return details_; }

 private:
  std::string code_;
  std::string message_;
  flutter::EncodableValue details_;
};

template <class T>
class ErrorOr {
 public:
  ErrorOr(const T& rhs) : v_(rhs) {}
  ErrorOr(const T&& rhs) : v_(std::move(rhs)) {}
  ErrorOr(const FlutterError& rhs) : v_(rhs) {}
  ErrorOr(const FlutterError&& rhs) : v_(std::move(rhs)) {}

  bool has_error() const { return std::holds_alternative<FlutterError>(v_); }
  const T& value() const { return std::get<T>(v_); };
  const FlutterError& error() const { return std::get<FlutterError>(v_); };

 private:
  friend class FirebaseStorageHostApi;
  ErrorOr() = default;
  T TakeValue() && { return std::get<T>(std::move(v_)); }

  std::variant<T, FlutterError> v_;
};

// The type of operation that generated the action code from calling
// [TaskState].
enum class PigeonStorageTaskState {
  // Indicates the task has been paused by the user.
  paused = 0,
  // Indicates the task is currently in-progress.
  running = 1,
  // Indicates the task has successfully completed.
  success = 2,
  // Indicates the task was canceled.
  canceled = 3,
  // Indicates the task failed with an error.
  error = 4
};

// Generated class from Pigeon that represents data sent in messages.
class PigeonStorageFirebaseApp {
 public:
  // Constructs an object setting all non-nullable fields.
  explicit PigeonStorageFirebaseApp(const std::string& app_name,
                                    const std::string& bucket);

  // Constructs an object setting all fields.
  explicit PigeonStorageFirebaseApp(const std::string& app_name,
                                    const std::string* tenant_id,
                                    const std::string& bucket);

  const std::string& app_name() const;
  void set_app_name(std::string_view value_arg);

  const std::string* tenant_id() const;
  void set_tenant_id(const std::string_view* value_arg);
  void set_tenant_id(std::string_view value_arg);

  const std::string& bucket() const;
  void set_bucket(std::string_view value_arg);

 private:
  static PigeonStorageFirebaseApp FromEncodableList(
      const flutter::EncodableList& list);
  flutter::EncodableList ToEncodableList() const;
  friend class FirebaseStorageHostApi;
  friend class FirebaseStorageHostApiCodecSerializer;
  std::string app_name_;
  std::optional<std::string> tenant_id_;
  std::string bucket_;
};

// Generated class from Pigeon that represents data sent in messages.
class PigeonStorageReference {
 public:
  // Constructs an object setting all fields.
  explicit PigeonStorageReference(const std::string& bucket,
                                  const std::string& full_path,
                                  const std::string& name);

  const std::string& bucket() const;
  void set_bucket(std::string_view value_arg);

  const std::string& full_path() const;
  void set_full_path(std::string_view value_arg);

  const std::string& name() const;
  void set_name(std::string_view value_arg);

 private:
  static PigeonStorageReference FromEncodableList(
      const flutter::EncodableList& list);
  flutter::EncodableList ToEncodableList() const;
  friend class FirebaseStorageHostApi;
  friend class FirebaseStorageHostApiCodecSerializer;
  std::string bucket_;
  std::string full_path_;
  std::string name_;
};

// Generated class from Pigeon that represents data sent in messages.
class PigeonFullMetaData {
 public:
  // Constructs an object setting all non-nullable fields.
  PigeonFullMetaData();

  // Constructs an object setting all fields.
  explicit PigeonFullMetaData(const flutter::EncodableMap* metadata);

  const flutter::EncodableMap* metadata() const;
  void set_metadata(const flutter::EncodableMap* value_arg);
  void set_metadata(const flutter::EncodableMap& value_arg);

 private:
  static PigeonFullMetaData FromEncodableList(
      const flutter::EncodableList& list);
  flutter::EncodableList ToEncodableList() const;
  friend class FirebaseStorageHostApi;
  friend class FirebaseStorageHostApiCodecSerializer;
  std::optional<flutter::EncodableMap> metadata_;
};

// Generated class from Pigeon that represents data sent in messages.
class PigeonListOptions {
 public:
  // Constructs an object setting all non-nullable fields.
  explicit PigeonListOptions(int64_t max_results);

  // Constructs an object setting all fields.
  explicit PigeonListOptions(int64_t max_results,
                             const std::string* page_token);

  // If set, limits the total number of `prefixes` and `items` to return.
  //
  // The default and maximum maxResults is 1000.
  int64_t max_results() const;
  void set_max_results(int64_t value_arg);

  // The nextPageToken from a previous call to list().
  //
  // If provided, listing is resumed from the previous position.
  const std::string* page_token() const;
  void set_page_token(const std::string_view* value_arg);
  void set_page_token(std::string_view value_arg);

 private:
  static PigeonListOptions FromEncodableList(
      const flutter::EncodableList& list);
  flutter::EncodableList ToEncodableList() const;
  friend class FirebaseStorageHostApi;
  friend class FirebaseStorageHostApiCodecSerializer;
  int64_t max_results_;
  std::optional<std::string> page_token_;
};

// Generated class from Pigeon that represents data sent in messages.
class PigeonSettableMetadata {
 public:
  // Constructs an object setting all non-nullable fields.
  PigeonSettableMetadata();

  // Constructs an object setting all fields.
  explicit PigeonSettableMetadata(const std::string* cache_control,
                                  const std::string* content_disposition,
                                  const std::string* content_encoding,
                                  const std::string* content_language,
                                  const std::string* content_type,
                                  const flutter::EncodableMap* custom_metadata);

  // Served as the 'Cache-Control' header on object download.
  //
  // See
  // https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control.
  const std::string* cache_control() const;
  void set_cache_control(const std::string_view* value_arg);
  void set_cache_control(std::string_view value_arg);

  // Served as the 'Content-Disposition' header on object download.
  //
  // See
  // https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Disposition.
  const std::string* content_disposition() const;
  void set_content_disposition(const std::string_view* value_arg);
  void set_content_disposition(std::string_view value_arg);

  // Served as the 'Content-Encoding' header on object download.
  //
  // See
  // https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Encoding.
  const std::string* content_encoding() const;
  void set_content_encoding(const std::string_view* value_arg);
  void set_content_encoding(std::string_view value_arg);

  // Served as the 'Content-Language' header on object download.
  //
  // See
  // https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Language.
  const std::string* content_language() const;
  void set_content_language(const std::string_view* value_arg);
  void set_content_language(std::string_view value_arg);

  // Served as the 'Content-Type' header on object download.
  //
  // See https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Type.
  const std::string* content_type() const;
  void set_content_type(const std::string_view* value_arg);
  void set_content_type(std::string_view value_arg);

  // Additional user-defined custom metadata.
  const flutter::EncodableMap* custom_metadata() const;
  void set_custom_metadata(const flutter::EncodableMap* value_arg);
  void set_custom_metadata(const flutter::EncodableMap& value_arg);

 private:
  static PigeonSettableMetadata FromEncodableList(
      const flutter::EncodableList& list);
  flutter::EncodableList ToEncodableList() const;
  friend class FirebaseStorageHostApi;
  friend class FirebaseStorageHostApiCodecSerializer;
  std::optional<std::string> cache_control_;
  std::optional<std::string> content_disposition_;
  std::optional<std::string> content_encoding_;
  std::optional<std::string> content_language_;
  std::optional<std::string> content_type_;
  std::optional<flutter::EncodableMap> custom_metadata_;
};

// Generated class from Pigeon that represents data sent in messages.
class PigeonListResult {
 public:
  // Constructs an object setting all non-nullable fields.
  explicit PigeonListResult(const flutter::EncodableList& items,
                            const flutter::EncodableList& prefixs);

  // Constructs an object setting all fields.
  explicit PigeonListResult(const flutter::EncodableList& items,
                            const std::string* page_token,
                            const flutter::EncodableList& prefixs);

  const flutter::EncodableList& items() const;
  void set_items(const flutter::EncodableList& value_arg);

  const std::string* page_token() const;
  void set_page_token(const std::string_view* value_arg);
  void set_page_token(std::string_view value_arg);

  const flutter::EncodableList& prefixs() const;
  void set_prefixs(const flutter::EncodableList& value_arg);

 private:
  static PigeonListResult FromEncodableList(const flutter::EncodableList& list);
  flutter::EncodableList ToEncodableList() const;
  friend class FirebaseStorageHostApi;
  friend class FirebaseStorageHostApiCodecSerializer;
  flutter::EncodableList items_;
  std::optional<std::string> page_token_;
  flutter::EncodableList prefixs_;
};

class FirebaseStorageHostApiCodecSerializer
    : public flutter::StandardCodecSerializer {
 public:
  FirebaseStorageHostApiCodecSerializer();
  inline static FirebaseStorageHostApiCodecSerializer& GetInstance() {
    static FirebaseStorageHostApiCodecSerializer sInstance;
    return sInstance;
  }

  void WriteValue(const flutter::EncodableValue& value,
                  flutter::ByteStreamWriter* stream) const override;

 protected:
  flutter::EncodableValue ReadValueOfType(
      uint8_t type, flutter::ByteStreamReader* stream) const override;
};

// Generated interface from Pigeon that represents a handler of messages from
// Flutter.
class FirebaseStorageHostApi {
 public:
  FirebaseStorageHostApi(const FirebaseStorageHostApi&) = delete;
  FirebaseStorageHostApi& operator=(const FirebaseStorageHostApi&) = delete;
  virtual ~FirebaseStorageHostApi() {}
  virtual void GetReferencebyPath(
      const PigeonStorageFirebaseApp& app, const std::string& path,
      const std::string* bucket,
      std::function<void(ErrorOr<PigeonStorageReference> reply)> result) = 0;
  virtual void SetMaxOperationRetryTime(
      const PigeonStorageFirebaseApp& app, int64_t time,
      std::function<void(std::optional<FlutterError> reply)> result) = 0;
  virtual void SetMaxUploadRetryTime(
      const PigeonStorageFirebaseApp& app, int64_t time,
      std::function<void(std::optional<FlutterError> reply)> result) = 0;
  virtual void SetMaxDownloadRetryTime(
      const PigeonStorageFirebaseApp& app, int64_t time,
      std::function<void(std::optional<FlutterError> reply)> result) = 0;
  virtual void UseStorageEmulator(
      const PigeonStorageFirebaseApp& app, const std::string& host,
      int64_t port,
      std::function<void(std::optional<FlutterError> reply)> result) = 0;
  virtual void ReferenceDelete(
      const PigeonStorageFirebaseApp& app,
      const PigeonStorageReference& reference,
      std::function<void(std::optional<FlutterError> reply)> result) = 0;
  virtual void ReferenceGetDownloadURL(
      const PigeonStorageFirebaseApp& app,
      const PigeonStorageReference& reference,
      std::function<void(ErrorOr<std::string> reply)> result) = 0;
  virtual void ReferenceGetMetaData(
      const PigeonStorageFirebaseApp& app,
      const PigeonStorageReference& reference,
      std::function<void(ErrorOr<PigeonFullMetaData> reply)> result) = 0;
  virtual void ReferenceList(
      const PigeonStorageFirebaseApp& app,
      const PigeonStorageReference& reference, const PigeonListOptions& options,
      std::function<void(ErrorOr<PigeonListResult> reply)> result) = 0;
  virtual void ReferenceListAll(
      const PigeonStorageFirebaseApp& app,
      const PigeonStorageReference& reference,
      std::function<void(ErrorOr<PigeonListResult> reply)> result) = 0;
  virtual void ReferenceGetData(
      const PigeonStorageFirebaseApp& app,
      const PigeonStorageReference& reference, int64_t max_size,
      std::function<void(ErrorOr<std::optional<std::vector<uint8_t>>> reply)>
          result) = 0;
  virtual void ReferencePutData(
      const PigeonStorageFirebaseApp& app,
      const PigeonStorageReference& reference, const std::vector<uint8_t>& data,
      const PigeonSettableMetadata& settable_meta_data, int64_t handle,
      std::function<void(ErrorOr<std::string> reply)> result) = 0;
  virtual void ReferencePutString(
      const PigeonStorageFirebaseApp& app,
      const PigeonStorageReference& reference, const std::string& data,
      int64_t format, const PigeonSettableMetadata& settable_meta_data,
      int64_t handle,
      std::function<void(ErrorOr<std::string> reply)> result) = 0;
  virtual void ReferencePutFile(
      const PigeonStorageFirebaseApp& app,
      const PigeonStorageReference& reference, const std::string& file_path,
      const PigeonSettableMetadata& settable_meta_data, int64_t handle,
      std::function<void(ErrorOr<std::string> reply)> result) = 0;
  virtual void ReferenceDownloadFile(
      const PigeonStorageFirebaseApp& app,
      const PigeonStorageReference& reference, const std::string& file_path,
      int64_t handle,
      std::function<void(ErrorOr<std::string> reply)> result) = 0;
  virtual void ReferenceUpdateMetadata(
      const PigeonStorageFirebaseApp& app,
      const PigeonStorageReference& reference,
      const PigeonSettableMetadata& metadata,
      std::function<void(ErrorOr<PigeonFullMetaData> reply)> result) = 0;
  virtual void TaskPause(
      const PigeonStorageFirebaseApp& app, int64_t handle,
      std::function<void(ErrorOr<flutter::EncodableMap> reply)> result) = 0;
  virtual void TaskResume(
      const PigeonStorageFirebaseApp& app, int64_t handle,
      std::function<void(ErrorOr<flutter::EncodableMap> reply)> result) = 0;
  virtual void TaskCancel(
      const PigeonStorageFirebaseApp& app, int64_t handle,
      std::function<void(ErrorOr<flutter::EncodableMap> reply)> result) = 0;

  // The codec used by FirebaseStorageHostApi.
  static const flutter::StandardMessageCodec& GetCodec();
  // Sets up an instance of `FirebaseStorageHostApi` to handle messages through
  // the `binary_messenger`.
  static void SetUp(flutter::BinaryMessenger* binary_messenger,
                    FirebaseStorageHostApi* api);
  static flutter::EncodableValue WrapError(std::string_view error_message);
  static flutter::EncodableValue WrapError(const FlutterError& error);

 protected:
  FirebaseStorageHostApi() = default;
};
}  // namespace firebase_storage_windows
#endif  // PIGEON_MESSAGES_G_H_
