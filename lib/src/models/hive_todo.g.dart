// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_todo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoDBModelAdapter extends TypeAdapter<TodoDBModel> {
  @override
  final int typeId = 1;

  @override
  TodoDBModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoDBModel(
      text: fields[1] as String,
      creationDate: fields[2] as DateTime,
      priority: fields[3] as int,
      category: fields[5] as String,
      title: fields[0] as String?,
      deadline: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, TodoDBModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.creationDate)
      ..writeByte(3)
      ..write(obj.priority)
      ..writeByte(4)
      ..write(obj.deadline)
      ..writeByte(5)
      ..write(obj.category);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoDBModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
