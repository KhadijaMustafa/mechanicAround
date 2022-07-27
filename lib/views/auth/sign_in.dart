import 'package:flutter/material.dart';
import 'package:mechanic_around/components/button_widget.dart';
import 'package:mechanic_around/utilities/my_colors.dart';
import 'package:mechanic_around/utilities/my_navigation.dart';
import 'package:mechanic_around/views/auth/user_login.dart';
import 'package:shimmer/shimmer.dart';class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 40,right: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
                Center(child: Shimmer.fromColors(child: Text('WELCOME',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold ),), baseColor: MyColors.yellow, highlightColor: MyColors.red)),

            SizedBox(height: 60,),
                ButtonWidget(
                  height: 50,
                  text: 'Admin',
                  size: 16,
               
                  fontWeight: FontWeight.bold,
                  bgcolor: MyColors.bggreen,
                  textcolor: MyColors.grey,
                  borderradius: BorderRadius.circular(10),onTab: (){},
                ),
                  SizedBox(height: 20,),
                ButtonWidget(
                  height: 50,
                  text: 'Mechanic',
                  size: 16,
                 
                  fontWeight: FontWeight.bold,
                  bgcolor: MyColors.yellow,
                  textcolor: MyColors.grey,
                  borderradius: BorderRadius.circular(10),onTab: (){},
                ),
                  SizedBox(height: 20,),
                ButtonWidget(
                  height: 50,
                  text: 'User',
                  size: 16,
                 
                  fontWeight: FontWeight.bold,
                  bgcolor: MyColors.red2,
                  textcolor: MyColors.grey,
                  borderradius: BorderRadius.circular(10),onTab: (){MyNavigation().push(context, UserLogin());},
                )
         

        ]),
      ),
    );
  }

}