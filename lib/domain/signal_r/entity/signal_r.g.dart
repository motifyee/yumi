// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signal_r.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignalRMImpl _$$SignalRMImplFromJson(Map<String, dynamic> json) =>
    _$SignalRMImpl(
      type: $enumDecode(_$SignalEnumMap, json['type']),
      message: json['message'],
    );

Map<String, dynamic> _$$SignalRMImplToJson(_$SignalRMImpl instance) =>
    <String, dynamic>{
      'type': _$SignalEnumMap[instance.type]!,
      'message': instance.message,
    };

const _$SignalEnumMap = {
  Signal.sendmessage: 'sendmessage',
  Signal.receivemessage: 'receivemessage',
  Signal.updatechefstatus: 'updatechefstatus',
  Signal.updatedriverstatus: 'updatedriverstatus',
  Signal.cusotmertransaction: 'cusotmertransaction',
  Signal.neworderreceived: 'neworderreceived',
  Signal.chefaccept: 'chefaccept',
  Signal.driveraccept: 'driveraccept',
  Signal.chefstart: 'chefstart',
  Signal.cheffinished: 'cheffinished',
  Signal.driverreceived: 'driverreceived',
  Signal.clientreceived: 'clientreceived',
  Signal.clientcancel: 'clientcancel',
  Signal.clientwait: 'clientwait',
  Signal.chefcancel: 'chefcancel',
  Signal.notification: 'notification',
  Signal.start: 'start',
  Signal.stop: 'stop',
};
