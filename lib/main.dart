// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mazad/Layout/mazad_app/cubit/cubit.dart';
import 'package:mazad/Layout/mazad_app/cubit/states.dart';
import 'package:mazad/modules/register/register_screen.dart';
import 'package:mazad/shared/bloc_observerse.dart';
import 'package:mazad/shared/network/local/cash_helper.dart';
import 'package:mazad/shared/network/remote/dio_helper.dart';
import 'package:mazad/shared/style/themes.dart';
import 'package:mazad/modules/on_boarding/onBoardingScreen.dart';
import 'Layout/Mazad_layout.dart';
import 'Layout/mazad_app/cubitMode.dart';
import 'modules/login/login_screen.dart';
import 'modules/profile/profile_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();



  DioHelper.init();
  await CashHelper.init();
  // late bool  isDark = CashHelper.getData(key: 'isDark');
  // late Widget widget;
  // bool ? onBoarding = CashHelper.getData(key: 'onBoarding');
  // token =CashHelper.getData(key: 'token');
  // if( onBoarding != null){
  //   if (token !=null) widget =ShopLayout();
  //   else widget =LoginShopScreen();
  // }
  // else {
  //   widget=OnBoardingScreen();
  // }

  BlocOverrides.runZoned(
        () {
      runApp(MyApp(
        //   isDark: isDark,
        // startWidget: widget,
      ));
    },
    blocObserver: SimpleBlocObserver(),
  );
}


class MyApp extends StatelessWidget {
  // late bool   isDark;
  //  late Widget  startWidget;
  MyApp(
      //  { required this.isDark,
      // required this.startWidget }
      );




  @override
  Widget build(BuildContext context) {


    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: darkTheme,
    //   darkTheme:lightTheme,
    //   themeMode: ThemeMode.light,
    //   home : OnBoardingScreen(),
    // Directionality(
    //     textDirection: TextDirection.ltr, child: OnBoardingScreen()),
    // );OnBoardingScreen

    return   MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) => ModeCubit()
          //..changeAppMode(fromShared: isDark,),
        ),
        BlocProvider(
            create: (BuildContext context) => MazadCubit()
        ),

      ],

      child: BlocConsumer<MazadCubit, MazadState>(
        listener: (context, state) {},
        builder: (context, state) {


          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: darkTheme,
              darkTheme: lightTheme,
              themeMode:
              ThemeMode.light,
              home:ProfileScreen()
             // RegisterScreen()
            //MazadLayout(),

            // startWidget,
            // Directionality(
            //     textDirection: TextDirection.ltr, child: OnBoardingScreen()),
          );
        },
      ),
    );

  }
}
//
// flutter_launcher_icons: "^0.9.2"
//
// flutter_icons:
// android: "launcher_icon"
// ios: true
// image_path: "assets/images/icon_mazad.png"