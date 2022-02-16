import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'fitness_app/fintness_app_theme.dart';
import 'fitness_app/material_admin/admin_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> with TickerProviderStateMixin {
  late AnimationController animationController;
  bool _isLoading = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    super.initState();
  }

  signIn(String email, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'email': email, 'password': pass};
    var jsonResponse;
    //var response = await http.post("YOUR_BASE_URL", body: data);
    var url = Uri.parse("http://www.liftwave.co.ke/api/login");
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) => const AdminPage()),
            (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }
  }

  initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70)),
            color: FitnessAppTheme.yellow,
            gradient: LinearGradient(
              colors: [FitnessAppTheme.yellow, FitnessAppTheme.yellow],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/images/ic_launcher.png",
                  fit: BoxFit.fill,
                  height: 140,
                  width: 140,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ],
          )),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            cursorColor: FitnessAppTheme.yellow,
            //validator: (){},
            onSaved: (value) {
              emailController.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              icon: Icon(
                Icons.email,
                color: FitnessAppTheme.yellow,
              ),
              hintText: "Enter Email",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xffEEEEEE),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 20),
                  blurRadius: 100,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: TextFormField(
            controller: passwordController,
            cursorColor: FitnessAppTheme.yellow,
            keyboardType: TextInputType.emailAddress,
            //validator: (){},
            onSaved: (value) {
              passwordController.text = value!;
            },
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              focusColor: FitnessAppTheme.yellow,
              icon: Icon(
                Icons.vpn_key,
                color: FitnessAppTheme.yellow,
              ),
              hintText: "Enter Password",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              // Write Click Listener Code Here
            },
            child: const Text("Forgot Password?"),
          ),
        ),
        InkWell(
          onTap: () {
            emailController.text == "" || passwordController.text == ""
                ? null
                : () {
                    setState(() {
                      _isLoading = true;
                    });

                    //TODO Continue
                    signIn(emailController.text, passwordController.text);

                    /*Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminHomePage(),
                        ));*/
                  };
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [FitnessAppTheme.yellow, FitnessAppTheme.yellow],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: const Text(
              "LOGIN",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't Have Any Account?  "),
              GestureDetector(
                child: const Text(
                  "Register Now",
                  style: TextStyle(color: FitnessAppTheme.yellow),
                ),
                onTap: () {
                  //TODO DECIDE IF TO REGISTER
                  /* // Write Tap Code Here.
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ));*/
                },
              )
            ],
          ),
        )
      ],
    )));
  }
}
