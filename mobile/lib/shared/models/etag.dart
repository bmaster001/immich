import 'package:immich_mobile/utils/hash.dart';
import 'package:isar/isar.dart';

part 'etag.g.dart';

@Collection(inheritance: false)
class ETag {
  ETag({required this.id, this.value});
  Id get isarId => fastHash(id);
  @Index(unique: true, replace: true, type: IndexType.hash)
  String id;
  String? value;
}
