import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twentytwo_project/pages/success.dart';

class JoinPage extends StatefulWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  _JoinPageState createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  @override
  Widget build(BuildContext context) {
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              'SYARAT & KETENTUAN',
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text(
                    'This is a demo term dialog.',
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    'Would you like to approve of this message?',
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Ya, Saya Mengerti'),
                onPressed: () {
                  Navigator.pushAndRemoveUntil<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => SuccessPage(),
                    ),
                    (route) =>
                        false, //if you want to disable back feature set to false
                  );
                },
              ),
              TextButton(
                child: const Text('Kembali'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F3460),
        title: const Text("Gabung"),
      ),
      bottomNavigationBar: Container(
        height: 56,
        child: Row(
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  _showMyDialog();
                },
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: Text("KONFIRMASI",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Card(
                    elevation: 4.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Beerman Coffee',
                              style: TextStyle(color: Colors.black87)),
                          subtitle: Text('Beerman Coffee Cabang Kediri',
                              style: TextStyle(color: Colors.black87)),
                          // trailing: Icon(Icons.favorite_outline),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'Beautiful home to rent, recently refurbished with modern appliances...',
                              style: TextStyle(color: Colors.black87)),
                        ),
                        ButtonBar(
                          children: [
                            TextButton(
                              child: const Text('MAP'),
                              onPressed: () {/* ... */},
                            ),
                            TextButton(
                              child: const Text('KONTAK'),
                              onPressed: () {/* ... */},
                            )
                          ],
                        )
                      ],
                    ))),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Card(
                    elevation: 4.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Slot',
                              style: TextStyle(color: Colors.black87)),
                          // trailing: Icon(Icons.favorite_outline),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          alignment: Alignment.centerLeft,
                          child: Text('Masukkan jumlah slot yang ingin dibeli',
                              style: TextStyle(color: Colors.black87)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          alignment: Alignment.centerLeft,
                          child: TextField(
                             keyboardType: TextInputType.number,
                             style: TextStyle(color: Colors.black87),
                          )
                        ),
                        ButtonBar(
                          children: [
                            // TextButton(
                            //   child: const Text('CONTACT AGENT'),
                            //   onPressed: () {/* ... */},
                            // ),
                            // TextButton(
                            //   child: const Text('LEARN MORE'),
                            //   onPressed: () {/* ... */},
                            // )
                          ],
                        )
                      ],
                    ))),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Card(
                    elevation: 4.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Metode Pembayaran',
                              style: TextStyle(color: Colors.black87)),
                          // trailing: Icon(Icons.favorite_outline),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          alignment: Alignment.centerLeft,
                          child: Text('Bank BRI',
                              style: TextStyle(color: Colors.black87)),
                        ),
                        ButtonBar(
                          children: [
                            TextButton(
                              child: const Text('CONTACT AGENT'),
                              onPressed: () {/* ... */},
                            ),
                            TextButton(
                              child: const Text('LEARN MORE'),
                              onPressed: () {/* ... */},
                            )
                          ],
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
