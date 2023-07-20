// Autogenerated from Pigeon (v10.1.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cloud_firestore_platform_interface/src/pigeon/messages.pigeon.dart';

class _TestFirebaseFirestoreHostApiCodec extends StandardMessageCodec {
  const _TestFirebaseFirestoreHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is DocumentReferenceRequest) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PigeonDocumentChange) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is PigeonDocumentOption) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is PigeonDocumentSnapshot) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PigeonFirebaseApp) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is PigeonFirebaseSettings) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is PigeonGetOptions) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else if (value is PigeonQueryParameters) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else if (value is PigeonQuerySnapshot) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else if (value is PigeonSnapshotMetadata) {
      buffer.putUint8(137);
      writeValue(buffer, value.encode());
    } else if (value is PigeonTransactionCommand) {
      buffer.putUint8(138);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return DocumentReferenceRequest.decode(readValue(buffer)!);
      case 129:
        return PigeonDocumentChange.decode(readValue(buffer)!);
      case 130:
        return PigeonDocumentOption.decode(readValue(buffer)!);
      case 131:
        return PigeonDocumentSnapshot.decode(readValue(buffer)!);
      case 132:
        return PigeonFirebaseApp.decode(readValue(buffer)!);
      case 133:
        return PigeonFirebaseSettings.decode(readValue(buffer)!);
      case 134:
        return PigeonGetOptions.decode(readValue(buffer)!);
      case 135:
        return PigeonQueryParameters.decode(readValue(buffer)!);
      case 136:
        return PigeonQuerySnapshot.decode(readValue(buffer)!);
      case 137:
        return PigeonSnapshotMetadata.decode(readValue(buffer)!);
      case 138:
        return PigeonTransactionCommand.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestFirebaseFirestoreHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec =
      _TestFirebaseFirestoreHostApiCodec();

  Future<String> loadBundle(PigeonFirebaseApp app, Uint8List bundle);

  Future<PigeonQuerySnapshot> namedQueryGet(
      PigeonFirebaseApp app, String name, PigeonGetOptions options);

  Future<void> clearPersistence(PigeonFirebaseApp app);

  Future<void> disableNetwork(PigeonFirebaseApp app);

  Future<void> enableNetwork(PigeonFirebaseApp app);

  Future<void> terminate(PigeonFirebaseApp app);

  Future<void> waitForPendingWrites(PigeonFirebaseApp app);

  Future<void> setIndexConfiguration(
      PigeonFirebaseApp app, String indexConfiguration);

  Future<void> setLoggingEnabled(bool loggingEnabled);

  Future<String> snapshotsInSyncSetup();

  Future<String> transactionCreate();

  Future<void> transactionStoreResult(
      String transactionId,
      PigeonTransactionResult resultType,
      List<PigeonTransactionCommand?>? commands);

  Future<PigeonDocumentSnapshot> transactionGet(
      PigeonFirebaseApp app, String transactionId, String path);

  Future<void> documentReferenceSet(
      PigeonFirebaseApp app, DocumentReferenceRequest request);

  Future<void> documentReferenceUpdate(
      PigeonFirebaseApp app, DocumentReferenceRequest request);

  Future<PigeonDocumentSnapshot> documentReferenceGet(
      PigeonFirebaseApp app, DocumentReferenceRequest request);

  Future<void> documentReferenceDelete(
      PigeonFirebaseApp app, DocumentReferenceRequest request);

  Future<PigeonQuerySnapshot> queryGet(
      PigeonFirebaseApp app,
      String path,
      bool isCollectionGroup,
      PigeonQueryParameters parameters,
      PigeonGetOptions options);

  Future<double> aggregateQueryCount(
      PigeonFirebaseApp app,
      String path,
      PigeonQueryParameters parameters,
      PigeonGetOptions options,
      AggregateSource source);

  Future<void> writeBatchCommit(
      PigeonFirebaseApp app, List<PigeonTransactionCommand?> writes);

  static void setup(TestFirebaseFirestoreHostApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.loadBundle', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.loadBundle was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.loadBundle was null, expected non-null PigeonFirebaseApp.');
          final Uint8List? arg_bundle = (args[1] as Uint8List?);
          assert(arg_bundle != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.loadBundle was null, expected non-null Uint8List.');
          final String output = await api.loadBundle(arg_app!, arg_bundle!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.namedQueryGet', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.namedQueryGet was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.namedQueryGet was null, expected non-null PigeonFirebaseApp.');
          final String? arg_name = (args[1] as String?);
          assert(arg_name != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.namedQueryGet was null, expected non-null String.');
          final PigeonGetOptions? arg_options = (args[2] as PigeonGetOptions?);
          assert(arg_options != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.namedQueryGet was null, expected non-null PigeonGetOptions.');
          final PigeonQuerySnapshot output =
              await api.namedQueryGet(arg_app!, arg_name!, arg_options!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.clearPersistence', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.clearPersistence was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.clearPersistence was null, expected non-null PigeonFirebaseApp.');
          await api.clearPersistence(arg_app!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.disableNetwork', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.disableNetwork was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.disableNetwork was null, expected non-null PigeonFirebaseApp.');
          await api.disableNetwork(arg_app!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.enableNetwork', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.enableNetwork was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.enableNetwork was null, expected non-null PigeonFirebaseApp.');
          await api.enableNetwork(arg_app!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.terminate', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.terminate was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.terminate was null, expected non-null PigeonFirebaseApp.');
          await api.terminate(arg_app!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.waitForPendingWrites',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.waitForPendingWrites was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.waitForPendingWrites was null, expected non-null PigeonFirebaseApp.');
          await api.waitForPendingWrites(arg_app!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.setIndexConfiguration',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.setIndexConfiguration was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.setIndexConfiguration was null, expected non-null PigeonFirebaseApp.');
          final String? arg_indexConfiguration = (args[1] as String?);
          assert(arg_indexConfiguration != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.setIndexConfiguration was null, expected non-null String.');
          await api.setIndexConfiguration(arg_app!, arg_indexConfiguration!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.setLoggingEnabled',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.setLoggingEnabled was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final bool? arg_loggingEnabled = (args[0] as bool?);
          assert(arg_loggingEnabled != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.setLoggingEnabled was null, expected non-null bool.');
          await api.setLoggingEnabled(arg_loggingEnabled!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.snapshotsInSyncSetup',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          // ignore message
          final String output = await api.snapshotsInSyncSetup();
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.transactionCreate',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          // ignore message
          final String output = await api.transactionCreate();
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.transactionStoreResult',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.transactionStoreResult was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_transactionId = (args[0] as String?);
          assert(arg_transactionId != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.transactionStoreResult was null, expected non-null String.');
          final PigeonTransactionResult? arg_resultType = args[1] == null
              ? null
              : PigeonTransactionResult.values[args[1] as int];
          assert(arg_resultType != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.transactionStoreResult was null, expected non-null PigeonTransactionResult.');
          final List<PigeonTransactionCommand?>? arg_commands =
              (args[2] as List<Object?>?)?.cast<PigeonTransactionCommand?>();
          await api.transactionStoreResult(
              arg_transactionId!, arg_resultType!, arg_commands);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.transactionGet', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.transactionGet was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.transactionGet was null, expected non-null PigeonFirebaseApp.');
          final String? arg_transactionId = (args[1] as String?);
          assert(arg_transactionId != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.transactionGet was null, expected non-null String.');
          final String? arg_path = (args[2] as String?);
          assert(arg_path != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.transactionGet was null, expected non-null String.');
          final PigeonDocumentSnapshot output =
              await api.transactionGet(arg_app!, arg_transactionId!, arg_path!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceSet',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceSet was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceSet was null, expected non-null PigeonFirebaseApp.');
          final DocumentReferenceRequest? arg_request =
              (args[1] as DocumentReferenceRequest?);
          assert(arg_request != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceSet was null, expected non-null DocumentReferenceRequest.');
          await api.documentReferenceSet(arg_app!, arg_request!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceUpdate',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceUpdate was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceUpdate was null, expected non-null PigeonFirebaseApp.');
          final DocumentReferenceRequest? arg_request =
              (args[1] as DocumentReferenceRequest?);
          assert(arg_request != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceUpdate was null, expected non-null DocumentReferenceRequest.');
          await api.documentReferenceUpdate(arg_app!, arg_request!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceGet',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceGet was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceGet was null, expected non-null PigeonFirebaseApp.');
          final DocumentReferenceRequest? arg_request =
              (args[1] as DocumentReferenceRequest?);
          assert(arg_request != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceGet was null, expected non-null DocumentReferenceRequest.');
          final PigeonDocumentSnapshot output =
              await api.documentReferenceGet(arg_app!, arg_request!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceDelete',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceDelete was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceDelete was null, expected non-null PigeonFirebaseApp.');
          final DocumentReferenceRequest? arg_request =
              (args[1] as DocumentReferenceRequest?);
          assert(arg_request != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.documentReferenceDelete was null, expected non-null DocumentReferenceRequest.');
          await api.documentReferenceDelete(arg_app!, arg_request!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.queryGet', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.queryGet was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.queryGet was null, expected non-null PigeonFirebaseApp.');
          final String? arg_path = (args[1] as String?);
          assert(arg_path != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.queryGet was null, expected non-null String.');
          final bool? arg_isCollectionGroup = (args[2] as bool?);
          assert(arg_isCollectionGroup != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.queryGet was null, expected non-null bool.');
          final PigeonQueryParameters? arg_parameters =
              (args[3] as PigeonQueryParameters?);
          assert(arg_parameters != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.queryGet was null, expected non-null PigeonQueryParameters.');
          final PigeonGetOptions? arg_options = (args[4] as PigeonGetOptions?);
          assert(arg_options != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.queryGet was null, expected non-null PigeonGetOptions.');
          final PigeonQuerySnapshot output = await api.queryGet(arg_app!,
              arg_path!, arg_isCollectionGroup!, arg_parameters!, arg_options!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.aggregateQueryCount',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.aggregateQueryCount was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.aggregateQueryCount was null, expected non-null PigeonFirebaseApp.');
          final String? arg_path = (args[1] as String?);
          assert(arg_path != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.aggregateQueryCount was null, expected non-null String.');
          final PigeonQueryParameters? arg_parameters =
              (args[2] as PigeonQueryParameters?);
          assert(arg_parameters != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.aggregateQueryCount was null, expected non-null PigeonQueryParameters.');
          final PigeonGetOptions? arg_options = (args[3] as PigeonGetOptions?);
          assert(arg_options != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.aggregateQueryCount was null, expected non-null PigeonGetOptions.');
          final AggregateSource? arg_source =
              args[4] == null ? null : AggregateSource.values[args[4] as int];
          assert(arg_source != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.aggregateQueryCount was null, expected non-null AggregateSource.');
          final double output = await api.aggregateQueryCount(
              arg_app!, arg_path!, arg_parameters!, arg_options!, arg_source!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.writeBatchCommit', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.writeBatchCommit was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.writeBatchCommit was null, expected non-null PigeonFirebaseApp.');
          final List<PigeonTransactionCommand?>? arg_writes =
              (args[1] as List<Object?>?)?.cast<PigeonTransactionCommand?>();
          assert(arg_writes != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.writeBatchCommit was null, expected non-null List<PigeonTransactionCommand?>.');
          await api.writeBatchCommit(arg_app!, arg_writes!);
          return <Object?>[];
        });
      }
    }
  }
}
