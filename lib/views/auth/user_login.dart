import 'package:flutter/material.dart';
import 'package:mechanic_around/components/text_widget.dart';
import 'package:mechanic_around/components/textfield_widget.dart';
import 'package:mechanic_around/utilities/my_colors.dart';
class UserLogin extends StatefulWidget {
  UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(child: Column(
          children: [
            SizedBox(
              height:30
            ),
            Container(
              child: TextWidget(text: 'Login',color: MyColors.bggreen,size: 20,fontWeight: FontWeight.bold,),
            ),
            TextFieldWidget(bordercolor: MyColors.black,borderradius: BorderRadius.circular(10),hinttext: 'Enter your email',controller: emailController,onChanged: (value){},)

          ],
        )),
      ),
    );
  }
}