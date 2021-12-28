import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twentytwo_project/widget/my_bussiness.dart';
import 'package:twentytwo_project/widget/tenant_bussiness.dart';
import 'package:twentytwo_project/widget/tenant_description.dart';

class TenantDetailPage extends StatelessWidget {
  const TenantDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
        // bottomNavigationBar: BottomNavigationBar(
        //   backgroundColor: const Color(0xFF191A19),
        //   selectedItemColor: const Color(0xFFFFFFFF),
        //   unselectedItemColor: Colors.grey,
        //   type: BottomNavigationBarType.fixed,
        //   onTap: (index) {},
        //   items: const [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //     BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Gabung'),
        //   ],
        // ),
        resizeToAvoidBottomInset: false,
        body: RefreshIndicator(
          onRefresh: _fetchPartner,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      height: 250,
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
                    AppBar(backgroundColor: Colors.transparent, elevation: 0),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.only(top: 70.0),
                                  child: Card(
                                    elevation: 0,
                                    color: Colors.transparent,
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://fastly.4sqi.net/img/general/200x200/47773573_qdb4MRFyllAcWzB-IYFaaJl0j-NiUtuGoPcfrVIQxJ4.jpg'),
                                        radius: 30,
                                      ),
                                      title: Text("Beerman Coffee"),
                                      subtitle: Text("Verified"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          child:
                                              Column(children: const <Widget>[
                                        Text("Value"),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text("Rp. 10.000.000"),
                                      ])),
                                      Expanded(
                                          child:
                                              Column(children: const <Widget>[
                                        Text("Profit"),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text("Rp. 100.000/Hari"),
                                      ])),
                                      Expanded(
                                          child:
                                              Column(children: const <Widget>[
                                        Text("Total Slot"),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text("300"),
                                      ])),
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    DefaultTabController(
                        length: 2,
                        child: Column(
                          children: const <Widget>[
                            TabBar(
                              tabs: [
                                Tab(text: 'Daftar Usaha'),
                                Tab(text: 'Tentang'),
                              ],
                            ),
                            SizedBox(
                              height: 460,
                              child: TabBarView(children: <Widget>[
                                TenantBussiness(),
                                TenantDescription()
                              ]),
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

Future<void> _fetchPartner() async {
  print('refreshing stocks...');
}
