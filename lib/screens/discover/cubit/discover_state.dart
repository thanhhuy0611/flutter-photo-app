part of 'discover_cubit.dart';

class DiscoverState extends Equatable {
  final String? todayPhoto;
  final List<String>? allPhoto;
  const DiscoverState({this.todayPhoto, this.allPhoto});

  DiscoverState copyWith({
    String? todayPhoto,
    List<String>? allPhoto,
  }) => DiscoverState(
    todayPhoto: todayPhoto ?? this.todayPhoto,
    allPhoto: allPhoto ?? this.allPhoto,
  );

  @override
  List<Object?> get props => [
    todayPhoto,
    allPhoto,
  ];
}
