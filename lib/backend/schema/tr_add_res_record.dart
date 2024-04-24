import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrAddResRecord extends FirestoreRecord {
  TrAddResRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "hall_image" field.
  List<String>? _hallImage;
  List<String> get hallImage => _hallImage ?? const [];
  bool hasHallImage() => _hallImage != null;

  // "HallMinimumCapacity" field.
  int? _hallMinimumCapacity;
  int get hallMinimumCapacity => _hallMinimumCapacity ?? 0;
  bool hasHallMinimumCapacity() => _hallMinimumCapacity != null;

  // "Hname" field.
  String? _hname;
  String get hname => _hname ?? '';
  bool hasHname() => _hname != null;

  // "capacity" field.
  int? _capacity;
  int get capacity => _capacity ?? 0;
  bool hasCapacity() => _capacity != null;

  // "contactNumber" field.
  String? _contactNumber;
  String get contactNumber => _contactNumber ?? '';
  bool hasContactNumber() => _contactNumber != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "pricePerPerson" field.
  int? _pricePerPerson;
  int get pricePerPerson => _pricePerPerson ?? 0;
  bool hasPricePerPerson() => _pricePerPerson != null;

  // "Imgae_tst" field.
  String? _imgaeTst;
  String get imgaeTst => _imgaeTst ?? '';
  bool hasImgaeTst() => _imgaeTst != null;

  void _initializeFields() {
    _hallImage = getDataList(snapshotData['hall_image']);
    _hallMinimumCapacity = castToType<int>(snapshotData['HallMinimumCapacity']);
    _hname = snapshotData['Hname'] as String?;
    _capacity = castToType<int>(snapshotData['capacity']);
    _contactNumber = snapshotData['contactNumber'] as String?;
    _location = snapshotData['location'] as String?;
    _pricePerPerson = castToType<int>(snapshotData['pricePerPerson']);
    _imgaeTst = snapshotData['Imgae_tst'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TrAddRes');

  static Stream<TrAddResRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrAddResRecord.fromSnapshot(s));

  static Future<TrAddResRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrAddResRecord.fromSnapshot(s));

  static TrAddResRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrAddResRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrAddResRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrAddResRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrAddResRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrAddResRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrAddResRecordData({
  int? hallMinimumCapacity,
  String? hname,
  int? capacity,
  String? contactNumber,
  String? location,
  int? pricePerPerson,
  String? imgaeTst,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'HallMinimumCapacity': hallMinimumCapacity,
      'Hname': hname,
      'capacity': capacity,
      'contactNumber': contactNumber,
      'location': location,
      'pricePerPerson': pricePerPerson,
      'Imgae_tst': imgaeTst,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrAddResRecordDocumentEquality implements Equality<TrAddResRecord> {
  const TrAddResRecordDocumentEquality();

  @override
  bool equals(TrAddResRecord? e1, TrAddResRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.hallImage, e2?.hallImage) &&
        e1?.hallMinimumCapacity == e2?.hallMinimumCapacity &&
        e1?.hname == e2?.hname &&
        e1?.capacity == e2?.capacity &&
        e1?.contactNumber == e2?.contactNumber &&
        e1?.location == e2?.location &&
        e1?.pricePerPerson == e2?.pricePerPerson &&
        e1?.imgaeTst == e2?.imgaeTst;
  }

  @override
  int hash(TrAddResRecord? e) => const ListEquality().hash([
        e?.hallImage,
        e?.hallMinimumCapacity,
        e?.hname,
        e?.capacity,
        e?.contactNumber,
        e?.location,
        e?.pricePerPerson,
        e?.imgaeTst
      ]);

  @override
  bool isValidKey(Object? o) => o is TrAddResRecord;
}
