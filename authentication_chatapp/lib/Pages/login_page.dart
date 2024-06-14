// ignore: file_names
import 'package:authentication_chatapp/components/my_button.dart';
import 'package:authentication_chatapp/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  void login() {}

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

              //EMAIL TEXTFIELD
              MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController),
              //PASSWORD TEXTFIELD
              const SizedBox(
                height: 10,
              ),

              //EMAIL TEXTFIELD
              MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: passwordController),

              //FORGOT PASSWORD

              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              //SIGNIN BUTTON

              MyButton(
                text: "Login",
                onTap: login,
              ),

              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  //DON'T HAVE AN ACCOUNT REGISTER HERE,
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Sign Up",
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
