import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:photo_app/repository/photo_repository.dart';

part 'discover_state.dart';

class DiscoverCubit extends Cubit<DiscoverState> {
  final PhotoRepository photoRepo;
  DiscoverCubit({required this.photoRepo}) 
    : super(const DiscoverState());

  void init() {
    final todayPhoto = photoRepo.getTodayPhoto();
    final allPhoto = photoRepo.getAllPhoto();

    emit(state.copyWith(
      todayPhoto: todayPhoto,
      allPhoto: allPhoto,
    ));
  }
}
