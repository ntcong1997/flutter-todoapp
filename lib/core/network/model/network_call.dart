import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class NetworkCall {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "number")
  String? number;

  NetworkCall(this.id, this.name, this.number);

  factory NetworkCall.fromJson(Map<String, dynamic> json) => _$NetworkCallFromJson(json);
}