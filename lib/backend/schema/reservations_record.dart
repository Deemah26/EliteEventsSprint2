import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservationsRecord extends FirestoreRecord {
  ReservationsRecord._(
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

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _totalCost = castToType<int>(snapshotData['totalCost']);
    _hostsID = snapshotData['HostsID'] as DocumentReference?;
    _hallsID = snapshotData['HallsID'] as DocumentReference?;
    _guardsID = snapshotData['GuardsID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservations');

  static Stream<ReservationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservationsRecord.fromSnapshot(s));

  static Future<ReservationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservationsRecord.fromSnapshot(s));

  static ReservationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservationsRecordData({
  DateTime? date,
  int? totalCost,
  DocumentReference? hostsID,
  DocumentReference? hallsID,
  DocumentReference? guardsID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'totalCost': totalCost,
      'HostsID': hostsID,
      'HallsID': hallsID,
      'GuardsID': guardsID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservationsRecordDocumentEquality
    implements Equality<ReservationsRecord> {
  const ReservationsRecordDocumentEquality();

  @override
  bool equals(ReservationsRecord? e1, ReservationsRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.totalCost == e2?.totalCost &&
        e1?.hostsID == e2?.hostsID &&
        e1?.hallsID == e2?.hallsID &&
        e1?.guardsID == e2?.guardsID;
  }

  @override
  int hash(ReservationsRecord? e) => const ListEquality()
      .hash([e?.date, e?.totalCost, e?.hostsID, e?.hallsID, e?.guardsID]);

  @override
  bool isValidKey(Object? o) => o is ReservationsRecord;
}
