import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "vegan" field.
  String? _vegan;
  String get vegan => _vegan ?? '';
  bool hasVegan() => _vegan != null;

  // "vegetarian" field.
  String? _vegetarian;
  String get vegetarian => _vegetarian ?? '';
  bool hasVegetarian() => _vegetarian != null;

  // "ovovege" field.
  String? _ovovege;
  String get ovovege => _ovovege ?? '';
  bool hasOvovege() => _ovovege != null;

  // "pescatarian" field.
  String? _pescatarian;
  String get pescatarian => _pescatarian ?? '';
  bool hasPescatarian() => _pescatarian != null;

  // "whitemeat" field.
  String? _whitemeat;
  String get whitemeat => _whitemeat ?? '';
  bool hasWhitemeat() => _whitemeat != null;

  // "halal" field.
  String? _halal;
  String get halal => _halal ?? '';
  bool hasHalal() => _halal != null;

  // "kosher" field.
  String? _kosher;
  String get kosher => _kosher ?? '';
  bool hasKosher() => _kosher != null;

  // "hindu" field.
  String? _hindu;
  String get hindu => _hindu ?? '';
  bool hasHindu() => _hindu != null;

  // "jain" field.
  String? _jain;
  String get jain => _jain ?? '';
  bool hasJain() => _jain != null;

  // "celery" field.
  String? _celery;
  String get celery => _celery ?? '';
  bool hasCelery() => _celery != null;

  // "cereals" field.
  String? _cereals;
  String get cereals => _cereals ?? '';
  bool hasCereals() => _cereals != null;

  // "eggs" field.
  String? _eggs;
  String get eggs => _eggs ?? '';
  bool hasEggs() => _eggs != null;

  // "fish" field.
  String? _fish;
  String get fish => _fish ?? '';
  bool hasFish() => _fish != null;

  // "milk" field.
  String? _milk;
  String get milk => _milk ?? '';
  bool hasMilk() => _milk != null;

  // "nuts" field.
  String? _nuts;
  String get nuts => _nuts ?? '';
  bool hasNuts() => _nuts != null;

  // "sugar" field.
  String? _sugar;
  String get sugar => _sugar ?? '';
  bool hasSugar() => _sugar != null;

  // "gmo" field.
  String? _gmo;
  String get gmo => _gmo ?? '';
  bool hasGmo() => _gmo != null;

  // "organic" field.
  String? _organic;
  String get organic => _organic ?? '';
  bool hasOrganic() => _organic != null;

  // "sesame" field.
  String? _sesame;
  String get sesame => _sesame ?? '';
  bool hasSesame() => _sesame != null;

  // "sulphurdioxide" field.
  String? _sulphurdioxide;
  String get sulphurdioxide => _sulphurdioxide ?? '';
  bool hasSulphurdioxide() => _sulphurdioxide != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _vegan = snapshotData['vegan'] as String?;
    _vegetarian = snapshotData['vegetarian'] as String?;
    _ovovege = snapshotData['ovovege'] as String?;
    _pescatarian = snapshotData['pescatarian'] as String?;
    _whitemeat = snapshotData['whitemeat'] as String?;
    _halal = snapshotData['halal'] as String?;
    _kosher = snapshotData['kosher'] as String?;
    _hindu = snapshotData['hindu'] as String?;
    _jain = snapshotData['jain'] as String?;
    _celery = snapshotData['celery'] as String?;
    _cereals = snapshotData['cereals'] as String?;
    _eggs = snapshotData['eggs'] as String?;
    _fish = snapshotData['fish'] as String?;
    _milk = snapshotData['milk'] as String?;
    _nuts = snapshotData['nuts'] as String?;
    _sugar = snapshotData['sugar'] as String?;
    _gmo = snapshotData['gmo'] as String?;
    _organic = snapshotData['organic'] as String?;
    _sesame = snapshotData['sesame'] as String?;
    _sulphurdioxide = snapshotData['sulphurdioxide'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? vegan,
  String? vegetarian,
  String? ovovege,
  String? pescatarian,
  String? whitemeat,
  String? halal,
  String? kosher,
  String? hindu,
  String? jain,
  String? celery,
  String? cereals,
  String? eggs,
  String? fish,
  String? milk,
  String? nuts,
  String? sugar,
  String? gmo,
  String? organic,
  String? sesame,
  String? sulphurdioxide,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'vegan': vegan,
      'vegetarian': vegetarian,
      'ovovege': ovovege,
      'pescatarian': pescatarian,
      'whitemeat': whitemeat,
      'halal': halal,
      'kosher': kosher,
      'hindu': hindu,
      'jain': jain,
      'celery': celery,
      'cereals': cereals,
      'eggs': eggs,
      'fish': fish,
      'milk': milk,
      'nuts': nuts,
      'sugar': sugar,
      'gmo': gmo,
      'organic': organic,
      'sesame': sesame,
      'sulphurdioxide': sulphurdioxide,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.vegan == e2?.vegan &&
        e1?.vegetarian == e2?.vegetarian &&
        e1?.ovovege == e2?.ovovege &&
        e1?.pescatarian == e2?.pescatarian &&
        e1?.whitemeat == e2?.whitemeat &&
        e1?.halal == e2?.halal &&
        e1?.kosher == e2?.kosher &&
        e1?.hindu == e2?.hindu &&
        e1?.jain == e2?.jain &&
        e1?.celery == e2?.celery &&
        e1?.cereals == e2?.cereals &&
        e1?.eggs == e2?.eggs &&
        e1?.fish == e2?.fish &&
        e1?.milk == e2?.milk &&
        e1?.nuts == e2?.nuts &&
        e1?.sugar == e2?.sugar &&
        e1?.gmo == e2?.gmo &&
        e1?.organic == e2?.organic &&
        e1?.sesame == e2?.sesame &&
        e1?.sulphurdioxide == e2?.sulphurdioxide;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.vegan,
        e?.vegetarian,
        e?.ovovege,
        e?.pescatarian,
        e?.whitemeat,
        e?.halal,
        e?.kosher,
        e?.hindu,
        e?.jain,
        e?.celery,
        e?.cereals,
        e?.eggs,
        e?.fish,
        e?.milk,
        e?.nuts,
        e?.sugar,
        e?.gmo,
        e?.organic,
        e?.sesame,
        e?.sulphurdioxide
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
