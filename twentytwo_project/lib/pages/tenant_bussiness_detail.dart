import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twentytwo_project/pages/join.dart';

class TenantBussinessDetail extends StatefulWidget {
  const TenantBussinessDetail({Key? key}) : super(key: key);

  @override
  _TenantBussinessDetailState createState() => _TenantBussinessDetailState();
}

class _TenantBussinessDetailState extends State<TenantBussinessDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 56,
        child: Row(
          children: <Widget>[
            Container(
              width: 66,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.chat, color: Colors.white),
                  Text("DISKUSI", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => JoinPage()));
                },
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: Text("GABUNG",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF0F3460),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://fastly.4sqi.net/img/general/200x200/47773573_qdb4MRFyllAcWzB-IYFaaJl0j-NiUtuGoPcfrVIQxJ4.jpg'),
                      ),
                      title: const Text(
                        'Beerman Coffee Cabang Kediri',
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        'Verified',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Container(
                      height: 200.0,
                      child: Ink.image(
                        image: NetworkImage(
                            'https://fastly.4sqi.net/img/general/200x200/47773573_qdb4MRFyllAcWzB-IYFaaJl0j-NiUtuGoPcfrVIQxJ4.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Merupakan project terbaru dari Beerman Coffee yang akan didirikan di Kediri. Mengingat Kediri merupakan salah satu tempat penghasil kopi Robista terbaik di Indonesia.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16, top: 16, bottom: 10),
                          child: Text(
                            'Lokasi',
                            style: TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                                'Jl. Martadinata, No.30A, Kelurahan Karang Indah, Kecamatan Andoolo, Kabupaten Kediri - Jawa Timur',
                                style: TextStyle(color: Colors.black54)),
                          ),
                        ),
                      ],
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                          textColor: const Color(0xFF6200EE),
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('MAPS'),
                        ),
                        FlatButton(
                          textColor: const Color(0xFF6200EE),
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('KONTAK'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                child: ListTile(
                  title: Text(
                    'SLOT',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    '80 / 100',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: Text(
                    '20 Slot Tersisa',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                child: ListTile(
                  title: Text(
                    'Harga Per Slot',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    'Rp. 100.000',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
