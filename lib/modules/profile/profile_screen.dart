import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('My profile',style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.normal
        ),),
        actions: [
        IconButton(
        color: Colors.black54,
        icon: Icon(
          FontAwesomeIcons.edit,
        ),
          onPressed: (){},
        )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 65,
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRvT59urBwJHSQXaH3g7IlcOkYg6qgN252OhLouqTxZ66ROulvZ_5Xs1LnMgUG_h_JCP8&usqp=CAU',

                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                     Text(' user name ')
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
