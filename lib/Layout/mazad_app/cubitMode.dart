import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mazad/Layout/mazad_app/stateMode.dart';


import '../../shared/network/local/cash_helper.dart';

class ModeCubit extends Cubit<ModeState> {
  ModeCubit() : super(ModeInitialState());

  static ModeCubit get(context) => BlocProvider.of(context);

  bool isDark = false;

  void changeAppMode({fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(ModeInitialState());
    } else {
      isDark = !isDark;
      CashHelper.saveData(key: 'isDark', value: isDark).then((value) {
        emit(ModeInitialState());
      });
    }
  }
}