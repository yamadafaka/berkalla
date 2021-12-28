import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twentytwo_project/widget/my_bussiness.dart';
import 'package:twentytwo_project/widget/my_menu.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

Future<void> _fetchProfile() async {
  print('refreshing stocks...');
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: RefreshIndicator(
          onRefresh: _fetchProfile,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      height: 240,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cutewallpaper.org/21/professional-background-images-for-linkedin/LinkedIn-Profile-Optimization-For-Dummies-Background-Image-.png'),
                            fit: BoxFit.cover),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.0)),
                        ),
                      ),
                    ),
                    AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      actions: <Widget>[
                        // IconButton(
                        //   icon: const Icon(
                        //     Icons.settings,
                        //     color: Colors.white,
                        //   ),
                        //   onPressed: () {
                        //     // do something
                        //   },
                        // )
                      ],
                    ),
                    SizedBox(
                      height: 240,
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://i.imgur.com/SU8K7dZ.jpeg",
                                ),
                                radius: 30.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 10.0, left: 20, right: 20),
                              child: Text(
                                "Amanda Futaba",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 10.0, left: 20, right: 20),
                              child: Text(
                                "Only you can change your life. Nobody else can do it for you.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
                TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(text: 'Menu Saya'),
                    Tab(text: 'Bisnis Saya'),
                  ],
                ),
                SizedBox(
                  height: 410,
                  child: TabBarView(
                      controller: _tabController,
                      children: const <Widget>[MyMenu(), MyBussiness()]),
                )
              ],
            ),
          ),
        ));
  }
}
