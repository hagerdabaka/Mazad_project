
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mazad/Layout/mazad_app/cubit/states.dart';

import '../../../modules/bids/bids_screen.dart';
import '../../../modules/favourit/favorite_screen.dart';
import '../../../modules/post_product/post_screen.dart';
import '../../../modules/profile/profile_screen.dart';
import '../../Mazad_layout.dart';


class MazadCubit extends Cubit<MazadState> {
  MazadCubit() : super(MazadInitialState());

  static MazadCubit get(context) => BlocProvider.of(context);

  int currentIndex =0;
  List<Widget> bottomScreens = [
    MazadLayout(),
    FavouritScreen(),
    PostScreen(),
    BidsScreen(),
    ProfileScreen(),

  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(MazadChangeBottomNavState());
  }
}