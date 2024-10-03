// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devicedetails_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceDetailsModelAdapter extends TypeAdapter<DeviceDetailsModel> {
  @override
  final int typeId = 0;

  @override
  DeviceDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeviceDetailsModel(
      osVersion: fields[0] as String?,
      deviceName: fields[1] as String?,
      deviceType: fields[2] as String?,
      versionCode: fields[3] as String?,
      notificationToken: fields[4] as String?,
      phoneId: fields[5] as String?,
      buildNumber: fields[6] as String?,
      deviceToken: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DeviceDetailsModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.osVersion)
      ..writeByte(1)
      ..write(obj.deviceName)
      ..writeByte(2)
      ..write(obj.deviceType)
      ..writeByte(3)
      ..write(obj.versionCode)
      ..writeByte(4)
      ..write(obj.notificationToken)
      ..writeByte(5)
      ..write(obj.phoneId)
      ..writeByte(6)
      ..write(obj.buildNumber)
      ..writeByte(7)
      ..write(obj.deviceToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
