import 'package:flutter/material.dart';
import 'package:mechanic_around/components/button_widget.dart';
import 'package:mechanic_around/components/text_widget.dart';
import 'package:mechanic_around/components/textfield_widget.dart';
import 'package:mechanic_around/utilities/my_colors.dart';
import 'package:shimmer/shimmer.dart';

class UserLogin extends StatefulWidget {
  UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
       alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 60),
               Shimmer.fromColors (
                  child: TextWidget(
                    text: 'Login',
                    color: MyColors.bggreen,
                    size: 30,
                    fontWeight: FontWeight.bold,
                  ),baseColor: MyColors.yellow,highlightColor: MyColors.red,
                ),
                SizedBox(height: 20),

                TextFieldWidget(
                  width: 300,
                  bordercolor: MyColors.black,
                  borderradius: BorderRadius.circular(10),
                  hinttext: 'Username',
                  controller: emailController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 20),

                TextFieldWidget(
                  width: 300,

                  bordercolor: MyColors.black,
                  borderradius: BorderRadius.circular(10),
                  hinttext: 'Enter your password',
                  controller: passController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 30,),
                ButtonWidget(
                  height: 50,
                  text: 'Login',
                  size: 16,
                  width: 300,
                  fontWeight: FontWeight.bold,
                  bgcolor: MyColors.yellow,
                  textcolor: MyColors.grey,
                  borderradius: BorderRadius.circular(10),onTab: (){},
                )
              ],
            )),
      ),
    );
  }
}
