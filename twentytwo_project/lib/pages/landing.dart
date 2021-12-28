import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twentytwo_project/pages/home.dart';
import 'package:twentytwo_project/pages/login.dart';
import 'package:twentytwo_project/pages/notification.dart';
import 'package:twentytwo_project/pages/profile.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

statusLogin _loginStatus = statusLogin.notSignIn;
enum statusLogin { notSignIn, signIn }

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  DateTime preBackpress = DateTime.now();

  @override
  void initState() {
    super.initState();
    checkAuth();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final List<Widget> _container = [
    const HomePage(),
    const NotificationPage(),
    const ProfilePage()
  ];

  var value;
  getLoginPreferences() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getInt("value");
      _loginStatus = value == 1 ? statusLogin.signIn : statusLogin.notSignIn;
    });
  }

  checkAuth() {
    getLoginPreferences();
    switch (_loginStatus) {
      case statusLogin.notSignIn:
        setState(() {
          _container[1] = const Login();
          _container[2] = const Login();
        });
        break;
      case statusLogin.signIn:
        setState(() {
          _container[1] = const NotificationPage();
          _container[2] = const ProfilePage();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF191A19),
          selectedItemColor: const Color(0xFFFFFFFF),
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Pesan'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Saya'),
          ],
        ));
  }
}
