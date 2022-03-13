
import 'package:flutter/material.dart';
import 'dart:core';

import 'package:fluttertoast/fluttertoast.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget defaultTextButton({
  required Function function,
  required String text,
}) =>
    TextButton(
        onPressed: () {
          function();
        },
        child: Text(text));
Widget defaultFormField({
  required String Lablee,
  required IconData prefix,
  required Function validate,
   required context,
  IconData? suffix,
  Function? suffixPressed,
  //bool isSecure = false,
  required TextInputType type,
  required var controller,
  Function? onTap,
  Function? onChange,
  Function? onSubmit,
  bool isClickable = true,
  bool isPassword = false,
 
}) =>
    TextFormField(
      style: Theme.of(context).textTheme.button,
      decoration: InputDecoration(

        labelText: Lablee ,
        border: UnderlineInputBorder(),
        prefixIcon: Icon(prefix),
        // suffixIcon: IconButton(
        //     icon: Icon(suffix),
        //     onPressed: () {
        //       suffixPressed!();
        //     }),
        suffixIcon: suffix != null
            ? IconButton(
          onPressed: (){

            suffixPressed!();
            },
          icon: Icon(
            suffix,
          ),
        )
            : null,
      ),
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onTap: () {
        onTap!();
      },
      validator: (v) {
     return   validate(v);
        },
      controller: controller,
      onChanged: (s) {
        onChange!(s);
      },
      onFieldSubmitted: (s) {
        onSubmit!(s);
      },

    );

// Widget buildArticleItem(article, context) => InkWell(
//       onTap: () {
//         navigateTo(
//           context,
//           WebViewScreen(article['url']),
//         );
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Row(
//           children: [
//             Container(
//               width: 120,
//               height: 120,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15.0),
//                   image: DecorationImage(
//                     image: NetworkImage('${article['urlToImage']}'),
//                     fit: BoxFit.cover,
//                   )),
//             ),
//             const SizedBox(
//               width: 12.0,
//             ),
//             Expanded(
//               child: Container(
//                 height: 120.0,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Text(
//                         '${article['title']}',
//                         style: Theme.of(context).textTheme.bodyText1,
//                         maxLines: 4,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     Text(
//                       '${article['publishedAt']}',
//                       style: TextStyle(
//                         color: Colors.grey,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );

Widget myDriver() => Container(
      width: double.infinity,
      height: 1.0,
      color: Colors.white12,
    );

// Widget articlList(list, context, {isSearch = false}) => ConditionalBuilder(
//       condition: list.length > 0,
//       builder: (context) => ListView.separated(
//         physics: BouncingScrollPhysics(),
//         itemBuilder: (context, index) => buildArticleItem(list[index], context),
//         separatorBuilder: (context, index) => myDriver(),
//         itemCount: 9,
//       ),
//       fallback: (context) =>
//           isSearch ? Container() : Center(child: CircularProgressIndicator()),
//       // condition: state is ! NewsSportLoadingState ,
//       // builder: (context)=>
//       //     ListView.separated(
//       //         physics: BouncingScrollPhysics(),
//       //         itemBuilder: (context,index)=>buildArticleItem(context),
//       //         separatorBuilder:  (context,index)=>myDriver(),
//       //         itemCount: 10),
//       // fallback: (context)=>Center(child: CircularProgressIndicator(),),
//     );

Future navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

Future navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ), (route) {
      return false;
    });

void showToast({
  required String text,
  required  ToastStates state,

})=>
Fluttertoast.showToast(
msg: text,
toastLength: Toast.LENGTH_LONG,
gravity: ToastGravity.BOTTOM,
timeInSecForIosWeb: 5,
backgroundColor: chooseToasTColor(state),
textColor: Colors.black87,
fontSize: 16.0
);

enum ToastStates {SUCCESS,ERROR,WARNING}

Color ? chooseToasTColor (ToastStates state ){
  Color color ;
  switch(state){

    case ToastStates.SUCCESS:
      color =Colors.green;
        break;
    case ToastStates.ERROR:
      color =Colors.red;
      break;
    case ToastStates.WARNING:
      color =Colors.amberAccent;
      break;
  }
  return color ;

}

