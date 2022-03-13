import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mazad/modules/login/login_screen.dart';

import '../../component/comoponants.dart';
import '../../shared/style/colors.dart';

class  RegisterScreen extends StatelessWidget {
  //const  RegisterScreen({Key? key}) : super(key: key);


  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var eController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var ageController = TextEditingController();
  var bankController = TextEditingController();
  var cashController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:
       AppBar(
         title:  Center(child: Image.asset('assets/images/icon_mazad.png',height: 90,width: 400,)),
       ),
        body:
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 60,left: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                SizedBox(
                  height: 10.0,
                ),
                Text('Sign up',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(
                      color: Colors.black54,
                    )),
                SizedBox(
                  height: 3.0,
                ),
                defaultFormField(
                    Lablee: 'Name',
                    prefix: Icons.person,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'Name must be filled ';
                      }
                    },
                    context: context,
                    type: TextInputType.name,
                    controller: nameController),
                SizedBox(
                  height: 10.0,
                ),
                defaultFormField(
                    Lablee: 'Enter your email address',
                    prefix: Icons.email,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'email address must be filled ';
                      }
                    },
                    context: context,
                    type:TextInputType.emailAddress,
                    controller: emailController),
                SizedBox( height: 10,),
                defaultFormField(
                    Lablee: 'Enter your password',
                    prefix: Icons.lock,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'password must be filled ';
                      }
                    },
                    context: context,
                    type:TextInputType.visiblePassword,
                    controller: passwordController),
                SizedBox( height: 10,),
                defaultFormField(
                    Lablee: 'Phone',
                    prefix: Icons.phone,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'Phone must be filled ';
                      }
                    },
                    context: context,
                    type: TextInputType.phone,
                    controller: phoneController),

                SizedBox(
                  height: 10.0,
                ),
                defaultFormField(
                    Lablee: 'Birthday',
                    prefix: Icons.date_range_outlined,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'Age must be filled ';
                      }
                    },
                    context: context,
                    type: TextInputType.datetime,
                    controller: ageController),
                SizedBox(
                  height: 10.0,
                ),
                defaultFormField(
                    Lablee: 'Bank account',
                    prefix: Icons.account_balance_wallet_outlined,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return ' Bank account must be filled ';
                      }
                    },
                    context: context,
                    type: TextInputType.datetime,
                    controller: ageController),
                SizedBox(
                  height: 10.0,
                ),
                defaultFormField(
                    Lablee: 'Vodaphone Cash',
                    prefix: Icons.contact_phone_outlined,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'Vodaphone cash must be filled ';
                      }
                    },
                    context: context,
                    type: TextInputType.phone,
                    controller: cashController),
                SizedBox(
                  height: 15.0,
                ),


                defaultButton(
                  radius: 30.0,
                  function: () {
                    // if(formKey.currentState!.validate()){
                    //   ShopLoginCubit.get(context).userLogin(email: emailController.text,
                    //       password: passwordController.text);
                    //   }
                  },
                  text: 'Sign up',
                  isUpperCase: true,
                  background: defaultColor,
                ),

                SizedBox( height:10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('you already have accout ?'),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, LoginScreen());
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(color: defaultColor),
                      ),


                    )
                  ],
                ),

              ],
            ),
          ),
        )





    );
  }
}
