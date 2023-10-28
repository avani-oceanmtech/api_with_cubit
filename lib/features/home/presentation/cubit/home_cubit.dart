import 'package:api_with_cubit/features/home/domain/entities/app_errors.dart';
import 'package:api_with_cubit/features/home/domain/entities/params/no_params_file.dart';
import 'package:api_with_cubit/features/home/domain/entities/product_data_entity.dart';
import 'package:api_with_cubit/features/home/domain/usecases/get_product_data.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetProductData getProductData;

  HomeCubit({required this.getProductData}) : super(const HomeInitialState());

  Future<void> loadInitialData() async {
    Either<AppError, List<ProductDataEntity>> response = await getProductData(NoParams());

    response.fold(
      (error) {},
      (List<ProductDataEntity> data) {},
    );
  }
}
