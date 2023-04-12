// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaVM _$$_MediaVMFromJson(Map<String, dynamic> json) => _$_MediaVM(
      id: MediaID.fromJson(json['id'] as Map<String, dynamic>),
      type: $enumDecode(_$MediaTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_MediaVMToJson(_$_MediaVM instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'type': _$MediaTypeEnumMap[instance.type]!,
    };

const _$MediaTypeEnumMap = {
  MediaType.photo: 'photo',
  MediaType.video: 'video',
  MediaType.doc: 'doc',
};
