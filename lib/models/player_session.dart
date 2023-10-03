import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
// required: associates our `main.dart` with the code generated by Freezed
part 'player_session.freezed.dart';
part 'player_session.g.dart';

@freezed
class PlayerSession with _$PlayerSession {
  const factory PlayerSession({
    required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'campaign_name') required String campaignName,
    @JsonKey(name: 'madness_value') required int madnessValue,
    @JsonKey(name: 'max_madness_value') required int maxMadnessValue,
  }) = _PlayerSession;

  factory PlayerSession.fromJson(Map<String, Object?> json) =>
      _$PlayerSessionFromJson(json);
}
