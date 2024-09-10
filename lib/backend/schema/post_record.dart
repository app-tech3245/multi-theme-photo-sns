import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostRecord extends FirestoreRecord {
  PostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "created_datetime" field.
  DateTime? _createdDatetime;
  DateTime? get createdDatetime => _createdDatetime;
  bool hasCreatedDatetime() => _createdDatetime != null;

  // "view_count" field.
  int? _viewCount;
  int get viewCount => _viewCount ?? 0;
  bool hasViewCount() => _viewCount != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  bool hasCaption() => _caption != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "star_count" field.
  int? _starCount;
  int get starCount => _starCount ?? 0;
  bool hasStarCount() => _starCount != null;

  // "post_type" field.
  String? _postType;
  String get postType => _postType ?? '';
  bool hasPostType() => _postType != null;

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _createdDatetime = snapshotData['created_datetime'] as DateTime?;
    _viewCount = castToType<int>(snapshotData['view_count']);
    _photoUrl = snapshotData['photo_url'] as String?;
    _caption = snapshotData['caption'] as String?;
    _category = snapshotData['category'] as String?;
    _tags = getDataList(snapshotData['tags']);
    _title = snapshotData['title'] as String?;
    _starCount = castToType<int>(snapshotData['star_count']);
    _postType = snapshotData['post_type'] as String?;
    _videoUrl = snapshotData['video_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post');

  static Stream<PostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostRecord.fromSnapshot(s));

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostRecord.fromSnapshot(s));

  static PostRecord fromSnapshot(DocumentSnapshot snapshot) => PostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostRecord._(reference, mapFromFirestore(data));

  static PostRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      PostRecord.getDocumentFromData(
        {
          'user_ref': convertAlgoliaParam(
            snapshot.data['user_ref'],
            ParamType.DocumentReference,
            false,
          ),
          'created_datetime': convertAlgoliaParam(
            snapshot.data['created_datetime'],
            ParamType.DateTime,
            false,
          ),
          'view_count': convertAlgoliaParam(
            snapshot.data['view_count'],
            ParamType.int,
            false,
          ),
          'photo_url': snapshot.data['photo_url'],
          'caption': snapshot.data['caption'],
          'category': snapshot.data['category'],
          'tags': safeGet(
            () => snapshot.data['tags'].toList(),
          ),
          'title': snapshot.data['title'],
          'star_count': convertAlgoliaParam(
            snapshot.data['star_count'],
            ParamType.int,
            false,
          ),
          'post_type': snapshot.data['post_type'],
          'video_url': snapshot.data['video_url'],
        },
        PostRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<PostRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'post',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'PostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostRecordData({
  DocumentReference? userRef,
  DateTime? createdDatetime,
  int? viewCount,
  String? photoUrl,
  String? caption,
  String? category,
  String? title,
  int? starCount,
  String? postType,
  String? videoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'created_datetime': createdDatetime,
      'view_count': viewCount,
      'photo_url': photoUrl,
      'caption': caption,
      'category': category,
      'title': title,
      'star_count': starCount,
      'post_type': postType,
      'video_url': videoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostRecordDocumentEquality implements Equality<PostRecord> {
  const PostRecordDocumentEquality();

  @override
  bool equals(PostRecord? e1, PostRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        e1?.createdDatetime == e2?.createdDatetime &&
        e1?.viewCount == e2?.viewCount &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.caption == e2?.caption &&
        e1?.category == e2?.category &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.title == e2?.title &&
        e1?.starCount == e2?.starCount &&
        e1?.postType == e2?.postType &&
        e1?.videoUrl == e2?.videoUrl;
  }

  @override
  int hash(PostRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.createdDatetime,
        e?.viewCount,
        e?.photoUrl,
        e?.caption,
        e?.category,
        e?.tags,
        e?.title,
        e?.starCount,
        e?.postType,
        e?.videoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is PostRecord;
}
