import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:chat_gpt/core/errors/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class UserData extends Equatable {
  final String? name;
  final String? description;
  final String? imagePath;

  const UserData({
    this.imagePath,
    this.name,
    this.description,
  });
  @override
  List<Object?> get props => [name, description, imagePath];
}

class UserUpdateParam extends Equatable {
  final String? name;
  final String? description;
  final File? imageFile;

  const UserUpdateParam({
    this.imageFile,
    this.name,
    this.description,
  });
  @override
  List<Object?> get props => [name, description, imageFile];
}
