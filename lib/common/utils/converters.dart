import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Converts a [Timestamp] to [DateTime]
class TimestampConverter implements JsonConverter<DateTime?, Timestamp?> {
  /// The [Timestamp] annotation
  const TimestampConverter();

  @override
  DateTime? fromJson(final Timestamp? timestamp) {
    if (timestamp != null) {
      return timestamp.toDate();
    } else {
      return null;
    }
  }

  @override
  Timestamp? toJson(final DateTime? date) {
    if (date != null) {
      return Timestamp.fromDate(date);
    } else {
      return null;
    }
  }
}
