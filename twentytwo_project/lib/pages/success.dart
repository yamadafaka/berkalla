import 'package:flutter/material.dart';
import 'package:twentytwo_project/pages/landing.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  DateTime preBackpress = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final timegap = DateTime.now().difference(preBackpress);
        final cantExit = timegap >= const Duration(seconds: 3);
        preBackpress = DateTime.now();
        if (cantExit) {
          const exitConfirm = SnackBar(
            content: Text('Tekan lagi untuk keluar'),
            duration: Duration(seconds: 3),
          );
          ScaffoldMessenger.of(context).showSnackBar(exitConfirm);
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 56,
          child: Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.purple,
                    child: Text("Lihat Transaksi Saya",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil<dynamic>(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (BuildContext context) => LandingPage(),
                      ),
                      (route) =>
                          false, //if you want to disable back feature set to false
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    child: Text("Kembali ke Beranda",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF0F3460),
          elevation: 0,
          title: const Center(
            child: Text('Transaksi Berhasil'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Container(
                    height: 240,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      // image: DecorationImage(
                      //     image: NetworkImage(
                      //         'https://cutewallpaper.org/21/professional-background-images-for-linkedin/LinkedIn-Profile-Optimization-For-Dummies-Background-Image-.png'),
                      //     fit: BoxFit.cover),
                    ),
                    // child: BackdropFilter(
                    //   filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                    //   child: Container(
                    //     decoration:
                    //         BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    //   ),
                    // ),
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
                                "https://www.pngall.com/wp-content/uploads/5/Checklist-Logo.png",
                              ),
                              radius: 30.0,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10.0, left: 20, right: 20),
                            child: Text(
                              "Pembelian Slot Berhasil",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10.0, left: 20, right: 20),
                            child: Text(
                              "YUOS-738J-HDNM-73ND",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10.0, left: 20, right: 20),
                            child: Text(
                              "28 Desember 2021 12:30 WIB",
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
            ),
            Card()
          ],
        ),
      ),
    );
  }
}
