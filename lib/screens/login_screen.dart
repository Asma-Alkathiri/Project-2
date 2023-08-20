import 'package:flutter/material.dart';
import 'package:jewelry_store/screens/home_screen.dart';
import 'package:jewelry_store/ui_class/colors.dart';
import 'package:jewelry_store/ui_class/spaces.dart';
import 'package:jewelry_store/utils/nav.dart';
import 'package:jewelry_store/widgets/buttom_widget.dart';
import 'package:jewelry_store/widgets/password_widget.dart';
import 'package:jewelry_store/widgets/text_feld_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primeryColor,
      appBar: AppBar(
        backgroundColor: primeryColor,
        elevation: 0,
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextFieldWidget(
                obscureText: false,
                InputType: TextInputType.emailAddress,
                hintText: "Enter User Name or Email",
                labelName: Text("UserName"),
                prefixIcon: Icons.email,
              ),
              const TextFieldWidget(
                obscureText: false,
                InputType: TextInputType.phone,
                hintText: "Enter Phone No",
                labelName: Text("Phone"),
                prefixIcon: Icons.phone,
              ),
              const PasswordWidget(
                scureText: true,
              ),
              Spaces.spacesH24,
               ButtomWidget(onPressed: () { context.pushAndRemove(path: const HomeScreen()); },
              text: "login",),
            ],
          ),
        ),
      ),
    );
  }
}
