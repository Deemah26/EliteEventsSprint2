import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HallsRecord extends FirestoreRecord {
  HallsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

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

  // "Image_tst" field.
  String? _imageTst;
  String get imageTst => _imageTst ?? '';
  bool hasImageTst() => _imageTst != null;

  void _initializeFields() {
    _hallMinimumCapacity = castToType<int>(snapshotData['HallMinimumCapacity']);
    _hname = snapshotData['Hname'] as String?;
    _capacity = castToType<int>(snapshotData['capacity']);
    _contactNumber = snapshotData['contactNumber'] as String?;
    _location = snapshotData['location'] as String?;
    _pricePerPerson = castToType<int>(snapshotData['pricePerPerson']);
    _imgaeTst = snapshotData['Imgae_tst'] as String?;
    _imageTst = snapshotData['Image_tst'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('halls');

  static Stream<HallsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HallsRecord.fromSnapshot(s));

  static Future<HallsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HallsRecord.fromSnapshot(s));

  static HallsRecord fromSnapshot(DocumentSnapshot snapshot) => HallsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HallsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HallsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HallsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HallsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHallsRecordData({
  int? hallMinimumCapacity,
  String? hname,
  int? capacity,
  String? contactNumber,
  String? location,
  int? pricePerPerson,
  String? imgaeTst,
  String? imageTst,
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
      'Image_tst': imageTst,
    }.withoutNulls,
  );

  return firestoreData;
}

class HallsRecordDocumentEquality implements Equality<HallsRecord> {
  const HallsRecordDocumentEquality();

  @override
  bool equals(HallsRecord? e1, HallsRecord? e2) {
    return e1?.hallMinimumCapacity == e2?.hallMinimumCapacity &&
        e1?.hname == e2?.hname &&
        e1?.capacity == e2?.capacity &&
        e1?.contactNumber == e2?.contactNumber &&
        e1?.location == e2?.location &&
        e1?.pricePerPerson == e2?.pricePerPerson &&
        e1?.imgaeTst == e2?.imgaeTst &&
        e1?.imageTst == e2?.imageTst;
  }

  @override
  int hash(HallsRecord? e) => const ListEquality().hash([
        e?.hallMinimumCapacity,
        e?.hname,
        e?.capacity,
        e?.contactNumber,
        e?.location,
        e?.pricePerPerson,
        e?.imgaeTst,
        e?.imageTst
      ]);

  @override
  bool isValidKey(Object? o) => o is HallsRecord;
}
