
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../component/comoponants.dart';
import '../modules/search/search_screen.dart';
import 'mazad_app/cubit/cubit.dart';
import 'mazad_app/cubit/states.dart';


class MazadLayout extends StatelessWidget {
  // const ShopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<MazadCubit, MazadState>(
    //     listener: (context, state) {},
    //     builder: (context, state) {
    //       var cubit = MazadCubit.get(context);

          return Scaffold(
            appBar:
            AppBar(
                title:
                Image(image: AssetImage('assets/images/icon_mazad.png'),
                  width: 250.0,
                  height: 100.0,),
                actions: [

                      IconButton(
                        color: Colors.black54,
                          icon: Icon(
                      Icons.search,
                           ),
                      onPressed: () {
                        navigateTo(
                            context,
                            SearchScreen(),
                        );

                        }
                      ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(

                  icon: Icon(
                    Icons.list,
                    size: 40

                  ),

                  onPressed: () {
                    navigateTo(
                      context,
                      SearchScreen(),

                    );
                  },
                ),
              ),
            ]),
          //  body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              // onTap: (index) {
              //   cubit.changeBottom(index);
              // },
              //currentIndex: cubit.currentIndex,
              items: [
                BottomNavigationBarItem(icon:
                Icon(
                  Icons.home_outlined,),
                    label: 'Home',

                )  ,
                BottomNavigationBarItem(icon:
                Icon(
                  Icons.favorite_border,


                 ),
                    label: 'Favourite'
                )  ,
                BottomNavigationBarItem(icon:
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.add,
                     size: 40,
                  color: Colors.black,
                  ),
                ),
                    label: 'Post'
                )  ,
                BottomNavigationBarItem(icon:
                Icon(
                    FontAwesomeIcons.gavel),
                    label: 'Bids'
                )  ,
                BottomNavigationBarItem(icon:
                Icon(
                  Icons.person_pin,),
                    label: 'Profile'
                )  ,
              ],
            ),
          );
  //       });
  //
  }
}
