part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {
  const HomeInitialState();

  @override
  List<Object> get props => [];
}

class HomeLoadingState extends HomeState {
  const HomeLoadingState();

  @override
  List<Object> get props => [];
}

class HomeLoadedState extends HomeState {
  final List<ProductDataEntity> productDataEntity;

  HomeLoadedState copyWith({
    List<ProductDataEntity>? productDataEntity,
  }) {
    return HomeLoadedState(
      productDataEntity: productDataEntity ?? this.productDataEntity,
    );
  }

  const HomeLoadedState({required this.productDataEntity});

  @override
  List<Object> get props => [];
}

class HomeErrorState extends HomeState {
  final AppErrorType appErrorType;
  final String errorMessage;

  const HomeErrorState({required this.appErrorType, required this.errorMessage});

  @override
  List<Object> get props => [appErrorType, errorMessage];
}
