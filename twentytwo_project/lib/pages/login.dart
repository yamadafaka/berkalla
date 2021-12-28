import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:twentytwo_project/pages/landing.dart';
import 'package:twentytwo_project/pages/register.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

enum statusLogin { notSignIn, signIn }

class _LoginState extends State<Login> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _hidepassword = true;

  String result = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  showPassword() {
    setState(() {
      _hidepassword = !_hidepassword;
    });
  }



  login() async {
    if (_username.text == 'admin' && _password.text == 'admin') {
      setState(() {
        int value = 1;
        String usernameApi = 'admin';
        String fullnameApi = 'admin';
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const LandingPage()));
      });
    } else {
      showTopSnackBar(
        context,
        CustomSnackBar.error(
          message: "Login Gagal",
        ),
      );
    }
  }

  checkLogin() {
    if (_formKey.currentState!.validate()) {
      login();
    }
  }

  @override
  Widget build(BuildContext context) {
    //Feedback Notif
    final resultLabel = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Text(result)],
    );

    //TextFormField Widget (Username)
    final usernameTextFormField = TextFormField(
        controller: _username,
        validator: (usernamevalue) {
          if (usernamevalue == null || usernamevalue.isEmpty) {
            return 'Username Tidak Boleh Kosong';
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Username',
          hintStyle: const TextStyle(color: Colors.white24),
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Colors.blueAccent, width: 2.0),
              borderRadius: BorderRadius.circular(32.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(32.0)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.pink, width: 2.0),
              borderRadius: BorderRadius.circular(32.0)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.pink, width: 2.0),
              borderRadius: BorderRadius.circular(32.0)),
        ));

    //TextFormField Widget (Password)
    final passwordTextFormField = TextFormField(
      controller: _password,
      validator: (passwordvalue) {
        if (passwordvalue == null || passwordvalue.isEmpty) {
          return 'Password Tidak Boleh Kosong';
        }
        return null;
      },
      autofocus: false,
      obscureText: _hidepassword,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: showPassword,
            icon:
                Icon(_hidepassword ? Icons.visibility_off : Icons.visibility)),
        hintText: 'Password',
        hintStyle: const TextStyle(color: Colors.white24),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueAccent, width: 2.0),
            borderRadius: BorderRadius.circular(32.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(32.0)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.pink, width: 2.0),
            borderRadius: BorderRadius.circular(32.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.pink, width: 2.0),
            borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    //Material Button (Login Button)
    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: () {
          checkLogin();
        },
        color: Colors.purple,
        child: const Text('Masuk', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            'Lupa password',
            style: TextStyle(color: Colors.white70),
          ),
        )
      ],
    );

    final registerLabel = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[Text("Belum Punya Akun?")],
    );

    final registerButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute<void>(builder: (BuildContext context) {
            return const RegisterPage();
          }));
        },
        color: Colors.lightBlueAccent,
        child: const Text('Daftar', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  children: <Widget>[
                    resultLabel,
                    const SizedBox(height: 48.0),
                    usernameTextFormField,
                    const SizedBox(height: 8.0),
                    passwordTextFormField,
                    forgotLabel,
                    loginButton,
                    registerLabel,
                    registerButton
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
