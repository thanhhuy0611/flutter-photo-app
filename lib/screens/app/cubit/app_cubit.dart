import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:photo_app/common/global_config.dart';
import 'package:photo_app/model/user_setting.dart';
import 'package:photo_app/repository/user_setting.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  final UserSettingRepository userSettingRepository;

  AppCubit({required this.userSettingRepository}) 
    : super(
      const AppState().copyWith(authStatus: AuthStatus.UNAUTHENTICATED),
    );

  void init(String defaultLanguageCode) async {
    UserSetting? userSetting = await userSettingRepository.getUserSetting();

    // ignore: prefer_conditional_assignment
    if (userSetting == null) {
      // UserSetting will be default in case first open
      userSetting = UserSetting(
        languageCode: defaultLanguageCode,
        isDarkMode: false,
      );
    }
  
    // save userSetting to use next time
    await userSettingRepository.upsertUserSetting(userSetting);

    emit(state.copyWith(
      userSetting: userSetting,
    ));

  }
}
