// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientes_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClientesModelsAdapter extends TypeAdapter<ClientesModels> {
  @override
  final int typeId = 0;

  @override
  ClientesModels read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClientesModels(
      id: fields[0] as int?,
      nome: fields[1] as String,
      data: fields[2] as String,
      horario: fields[3] as String,
      valor: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, ClientesModels obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.data)
      ..writeByte(3)
      ..write(obj.horario)
      ..writeByte(4)
      ..write(obj.valor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientesModelsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
