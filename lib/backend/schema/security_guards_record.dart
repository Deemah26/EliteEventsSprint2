import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SecurityGuardsRecord extends FirestoreRecord {
  SecurityGuardsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "GTotalCost" field.
  int? _gTotalCost;
  int get gTotalCost => _gTotalCost ?? 0;
  bool hasGTotalCost() => _gTotalCost != null;

  // "totalNumOfGuards" field.
  int? _totalNumOfGuards;
  int get totalNumOfGuards => _totalNumOfGuards ?? 0;
  bool hasTotalNumOfGuards() => _totalNumOfGuards != null;

  void _initializeFields() {
    _gTotalCost = castToType<int>(snapshotData['GTotalCost']);
    _totalNumOfGuards = castToType<int>(snapshotData['totalNumOfGuards']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('securityGuards');

  static Stream<SecurityGuardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SecurityGuardsRecord.fromSnapshot(s));

  static Future<SecurityGuardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SecurityGuardsRecord.fromSnapshot(s));

  static SecurityGuardsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SecurityGuardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SecurityGuardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SecurityGuardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SecurityGuardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SecurityGuardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSecurityGuardsRecordData({
  int? gTotalCost,
  int? totalNumOfGuards,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'GTotalCost': gTotalCost,
      'totalNumOfGuards': totalNumOfGuards,
    }.withoutNulls,
  );

  return firestoreData;
}

class SecurityGuardsRecordDocumentEquality
    implements Equality<SecurityGuardsRecord> {
  const SecurityGuardsRecordDocumentEquality();

  @override
  bool equals(SecurityGuardsRecord? e1, SecurityGuardsRecord? e2) {
    return e1?.gTotalCost == e2?.gTotalCost &&
        e1?.totalNumOfGuards == e2?.totalNumOfGuards;
  }

  @override
  int hash(SecurityGuardsRecord? e) =>
      const ListEquality().hash([e?.gTotalCost, e?.totalNumOfGuards]);

  @override
  bool isValidKey(Object? o) => o is SecurityGuardsRecord;
}
