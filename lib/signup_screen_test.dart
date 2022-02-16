import 'package:flutter/material.dart';

import 'fitness_app/fintness_app_theme.dart';

class SignUpScreenTest extends StatefulWidget {
  const SignUpScreenTest({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreenTest> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstNameField = TextFormField(
      controller: firstNameController,
      keyboardType: TextInputType.name,
      cursorColor: FitnessAppTheme.yellow,
      //validator: (){},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.person,
          color: FitnessAppTheme.yellow,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final lastNameField = TextFormField(
      controller: lastNameController,
      keyboardType: TextInputType.name,
      cursorColor: FitnessAppTheme.yellow,
      //validator: (){},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.person,
          color: FitnessAppTheme.yellow,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Last Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final emailField = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      cursorColor: FitnessAppTheme.yellow,
      //validator: (){},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.email,
          color: FitnessAppTheme.yellow,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Email Address",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final passwordField = TextFormField(
      controller: passwordController,
      autofocus: false,
      cursorColor: FitnessAppTheme.yellow,
      obscureText: true,
      //validator: (){},
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.vpn_key_outlined,
          color: FitnessAppTheme.yellow,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final confirmPasswordField = TextFormField(
      controller: confirmPasswordController,
      autofocus: false,
      cursorColor: FitnessAppTheme.yellow,
      obscureText: true,
      //validator: (){},
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.vpn_key_outlined,
          color: FitnessAppTheme.yellow,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final registerButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        color: FitnessAppTheme.yellow,
        child: const Text(
          "Register",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: FitnessAppTheme.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  key: _formKey,
                  children: <Widget>[
                    SizedBox(
                      height: 250,
                      child: Image.asset(
                        "assets/images/ic_launcher.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    firstNameField,
                    const SizedBox(
                      height: 25,
                    ),
                    lastNameField,
                    const SizedBox(
                      height: 25,
                    ),
                    emailField,
                    const SizedBox(
                      height: 25,
                    ),
                    passwordField,
                    const SizedBox(
                      height: 25,
                    ),
                    confirmPasswordField,
                    const SizedBox(
                      height: 25,
                    ),
                    registerButton,
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
