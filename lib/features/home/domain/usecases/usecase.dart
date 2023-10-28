import 'package:api_with_cubit/features/home/domain/entities/app_errors.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Params> {
  Future<Either<AppError, Type>> call(Params params);
}
