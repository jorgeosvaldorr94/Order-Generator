import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "orderNumber" field.
  int? _orderNumber;
  int get orderNumber => _orderNumber ?? 0;
  bool hasOrderNumber() => _orderNumber != null;

  // "orderDescription" field.
  String? _orderDescription;
  String get orderDescription => _orderDescription ?? '';
  bool hasOrderDescription() => _orderDescription != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "product" field.
  String? _product;
  String get product => _product ?? '';
  bool hasProduct() => _product != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "createdByName" field.
  DocumentReference? _createdByName;
  DocumentReference? get createdByName => _createdByName;
  bool hasCreatedByName() => _createdByName != null;

  // "createdByPhoto" field.
  DocumentReference? _createdByPhoto;
  DocumentReference? get createdByPhoto => _createdByPhoto;
  bool hasCreatedByPhoto() => _createdByPhoto != null;

  // "orderStatus" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  bool hasOrderStatus() => _orderStatus != null;

  // "updateDataTime" field.
  List<DateTime>? _updateDataTime;
  List<DateTime> get updateDataTime => _updateDataTime ?? const [];
  bool hasUpdateDataTime() => _updateDataTime != null;

  // "updateDescription" field.
  List<String>? _updateDescription;
  List<String> get updateDescription => _updateDescription ?? const [];
  bool hasUpdateDescription() => _updateDescription != null;

  // "clientName" field.
  DocumentReference? _clientName;
  DocumentReference? get clientName => _clientName;
  bool hasClientName() => _clientName != null;

  // "clientPhone" field.
  DocumentReference? _clientPhone;
  DocumentReference? get clientPhone => _clientPhone;
  bool hasClientPhone() => _clientPhone != null;

  // "clientEmail" field.
  DocumentReference? _clientEmail;
  DocumentReference? get clientEmail => _clientEmail;
  bool hasClientEmail() => _clientEmail != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _title = snapshotData['title'] as String?;
    _orderNumber = snapshotData['orderNumber'] as int?;
    _orderDescription = snapshotData['orderDescription'] as String?;
    _image = snapshotData['image'] as String?;
    _product = snapshotData['product'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _createdByName = snapshotData['createdByName'] as DocumentReference?;
    _createdByPhoto = snapshotData['createdByPhoto'] as DocumentReference?;
    _orderStatus = snapshotData['orderStatus'] as String?;
    _updateDataTime = getDataList(snapshotData['updateDataTime']);
    _updateDescription = getDataList(snapshotData['updateDescription']);
    _clientName = snapshotData['clientName'] as DocumentReference?;
    _clientPhone = snapshotData['clientPhone'] as DocumentReference?;
    _clientEmail = snapshotData['clientEmail'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createOrderRecordData({
  String? uid,
  String? title,
  int? orderNumber,
  String? orderDescription,
  String? image,
  String? product,
  DateTime? created,
  DocumentReference? createdByName,
  DocumentReference? createdByPhoto,
  String? orderStatus,
  DocumentReference? clientName,
  DocumentReference? clientPhone,
  DocumentReference? clientEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'title': title,
      'orderNumber': orderNumber,
      'orderDescription': orderDescription,
      'image': image,
      'product': product,
      'created': created,
      'createdByName': createdByName,
      'createdByPhoto': createdByPhoto,
      'orderStatus': orderStatus,
      'clientName': clientName,
      'clientPhone': clientPhone,
      'clientEmail': clientEmail,
    }.withoutNulls,
  );

  return firestoreData;
}
