import 'package:json_annotation/json_annotation.dart';

part 'dashboard_response_model.g.dart';

@JsonSerializable()
class DashboardResponseModel {
  @JsonKey(name: 'title')
  String? title;

  DashboardResponseModel({
    this.title,
  });

  factory DashboardResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardResponseModelFromJson(json);

  Map<String, dynamic>? toJson() => _$DashboardResponseModelToJson(this);
}
