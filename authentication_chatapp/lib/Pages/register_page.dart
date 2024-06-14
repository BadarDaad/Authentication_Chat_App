// ignore: file_names
import 'package:authentication_chatapp/components/my_button.dart';
import 'package:authentication_chatapp/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text controller
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPwController = TextEditingController();

  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 25,
              ),
              //APP NAME

              const Text(
                'C H A T A P P',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),

              //username TEXTFIELD
              MyTextField(
                  hintText: "UserNamer",
                  obscureText: false,
                  controller: usernameController),
              const SizedBox(
                height: 10,
              ),

              //EMAIL TEXTFIELD
              MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController),

              //PASSWORD TEXTFIELD
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: passwordController),

              //PASSWORD TEXTFIELD
              const SizedBox(
                height: 10,
              ),

              //Confirm password TEXTFIELD
              MyTextField(
                  hintText: "Confirm Password",
                  obscureText: true,
                  controller: confirmPwController),

              //FORGOT PASSWORD

              const SizedBox(
                height: 10,
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              // //   children: [
              // //     Text(
              // //       'Already have an Account?',
              // //       style: TextStyle(
              // //           color: Theme.of(context).colorScheme.inversePrimary),
              // //     ),
              // //   ],
              // // ),

              // const SizedBox(
              //   height: 10,
              // ),

              //SIGNUP BUTTON

              MyButton(
                text: "Register",
                onTap: register,
              ),

              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account? ",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  //DON'T HAVE AN ACCOUNT REGISTER HERE,
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login Here",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inverseSurface,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
