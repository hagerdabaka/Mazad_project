import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mazad/component/comoponants.dart';
import 'package:mazad/modules/register/register_screen.dart';
import 'package:mazad/shared/style/colors.dart';

class LoginScreen extends StatelessWidget {
 // const LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      body:
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/icon_mazad.png',
                height: 120,),
                SizedBox(
                  height: 30.0,
                ),
                Text('Login',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(
                      color: Colors.black54,
                    )),
                SizedBox(
                  height: 40.0,
                ),
                defaultFormField(
                    Lablee: 'Enter your email address',
                    prefix: Icons.person,
                    validate: (String value) {
                      if (value.isEmpty) {
                      return 'email address must be filled ';
                      }
                      },
                    context: context,
                    type:TextInputType.emailAddress,
                    controller: emailController),
                SizedBox( height: 25,),
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
                SizedBox( height: 30,),

            defaultButton(
              radius: 30.0,
              function: () {
                // if(formKey.currentState!.validate()){
                //   ShopLoginCubit.get(context).userLogin(email: emailController.text,
                //       password: passwordController.text);
             //   }
              },
              text: 'login',
              isUpperCase: true,
              background: defaultColor,
            ),
                SizedBox( height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon:Icon( FontAwesomeIcons.facebook),color: Colors.black38, ),
                IconButton(onPressed: (){}, icon:Icon( FontAwesomeIcons.google  ),color: Colors.black38, ),
                IconButton(onPressed: (){}, icon:Icon(  FontAwesomeIcons.twitter,),color: Colors.black38, ),
               // IconButton(onPressed: (){}, icon:Icon( Icons.facebook_outlined,) )
              ],
            ),
                SizedBox( height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an accout ?'),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, RegisterScreen());
                      },
                      child: Text(
                        'REGISTER',
                        style: TextStyle(color: defaultColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          )




      
    );
  }
}
