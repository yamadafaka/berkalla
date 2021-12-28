import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fullName = TextEditingController();

  String result = '';

  String name = '';
  String user = '';

  final _registerForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final resultLabel = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Text(result)],
    );

    final fullNameTextFormField = TextFormField(
      validator: (fullnamevalue) {
        if (fullnamevalue == null || fullnamevalue.isEmpty) {
          return 'Masukkan Nama Lengkap';
        }
        return null;
      },
      controller: fullName,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Nama Lengkap',
        hintStyle: const TextStyle(color: Colors.white24),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueAccent, width: 2.0),
            borderRadius: BorderRadius.circular(32.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final usernameTextFormField = TextFormField(
      validator: (emailvalue) {
        if (emailvalue == null || emailvalue.isEmpty) {
          return 'Masukkan Username';
        }
        return null;
      },
      controller: username,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Username',
        hintStyle: const TextStyle(color: Colors.white24),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueAccent, width: 2.0),
            borderRadius: BorderRadius.circular(32.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final passwordTextFormField = TextFormField(
      validator: (passwordvalue) {
        if (passwordvalue == null || passwordvalue.isEmpty) {
          return 'Masukkan Kata Sandi';
        }
        return null;
      },
      controller: password,
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: const TextStyle(color: Colors.white24),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueAccent, width: 2.0),
            borderRadius: BorderRadius.circular(32.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final registerButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: () async {
          
        },
        color: Colors.purple,
        child: const Text('Daftar', style: TextStyle(color: Colors.white)),
      ),
    );

    final loginLabel = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[Text("Sudah Punya Akun?")],
    );

    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.lightBlueAccent,
        child: const Text('Login', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white70,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _registerForm,
            child: Column(
              children: <Widget>[
                Center(
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    children: <Widget>[
                      resultLabel,
                      const SizedBox(height: 48.0),
                      fullNameTextFormField,
                      const SizedBox(height: 8.0),
                      usernameTextFormField,
                      const SizedBox(height: 8.0),
                      passwordTextFormField,
                      registerButton,
                      loginLabel,
                      loginButton
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
