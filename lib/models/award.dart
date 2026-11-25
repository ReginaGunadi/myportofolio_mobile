import 'package:json_annotation/json_annotation.dart';

part 'award.g.dart';

/// Portfolio award synchronized with the Django REST Framework API.
@JsonSerializable(fieldRename: FieldRename.snake)
class Award {
  const Award({
    required this.title,
    required this.description,
    this.category = 'tech',
    this.image = '',
    this.starCount = 0,
    this.isStarred = false,
    this.starredByNames = '',
    this.id,
  });

  factory Award.fromJson(Map<String, dynamic> json) => _$AwardFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;

  final String title;
  final String description;

  @JsonKey(defaultValue: 'tech')
  final String category;

  @JsonKey(defaultValue: '')
  final String image;

  @JsonKey(includeToJson: false, defaultValue: 0)
  final int starCount;

  @JsonKey(includeToJson: false, defaultValue: false)
  final bool isStarred;

  @JsonKey(includeToJson: false, defaultValue: '')
  final String starredByNames;

  Map<String, dynamic> toJson() => _$AwardToJson(this);
}
