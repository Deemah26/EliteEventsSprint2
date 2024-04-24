import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestryDELETELaterRecord extends FirestoreRecord {
  RestryDELETELaterRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "totalCost" field.
  int? _totalCost;
  int get totalCost => _totalCost ?? 0;
  bool hasTotalCost() => _totalCost != null;

  // "HostsID" field.
  DocumentReference? _hostsID;
  DocumentReference? get hostsID => _hostsID;
  bool hasHostsID() => _hostsID != null;

  // "HallsID" field.
  DocumentReference? _hallsID;
  DocumentReference? get hallsID => _hallsID;
  bool hasHallsID() => _hallsID != null;

  // "GuardsID" field.
  DocumentReference? _guardsID;
  DocumentReference? get guardsID => _guardsID;
  bool hasGuardsID() => _guardsID != null;

  // "datee" field.
  int? _datee;
  int get datee => _datee ?? 0;
  bool hasDatee() => _datee != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _totalCost = castToType<int>(snapshotData['totalCost']);
    _hostsID = snapshotData['HostsID'] as DocumentReference?;
    _hallsID = snapshotData['HallsID'] as DocumentReference?;
    _guardsID = snapshotData['GuardsID'] as DocumentReference?;
    _datee = castToType<int>(snapshotData['datee']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RestryDELETELater');

  static Stream<RestryDELETELaterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestryDELETELaterRecord.fromSnapshot(s));

  static Future<RestryDELETELaterRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RestryDELETELaterRecord.fromSnapshot(s));

  static RestryDELETELaterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestryDELETELaterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestryDELETELaterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestryDELETELaterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestryDELETELaterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestryDELETELaterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestryDELETELaterRecordData({
  DateTime? date,
  int? totalCost,
  DocumentReference? hostsID,
  DocumentReference? hallsID,
  DocumentReference? guardsID,
  int? datee,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'totalCost': totalCost,
      'HostsID': hostsID,
      'HallsID': hallsID,
      'GuardsID': guardsID,
      'datee': datee,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestryDELETELaterRecordDocumentEquality
    implements Equality<RestryDELETELaterRecord> {
  const RestryDELETELaterRecordDocumentEquality();

  @override
  bool equals(RestryDELETELaterRecord? e1, RestryDELETELaterRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.totalCost == e2?.totalCost &&
        e1?.hostsID == e2?.hostsID &&
        e1?.hallsID == e2?.hallsID &&
        e1?.guardsID == e2?.guardsID &&
        e1?.datee == e2?.datee;
  }

  @override
  int hash(RestryDELETELaterRecord? e) => const ListEquality().hash(
      [e?.date, e?.totalCost, e?.hostsID, e?.hallsID, e?.guardsID, e?.datee]);

  @override
  bool isValidKey(Object? o) => o is RestryDELETELaterRecord;
}
