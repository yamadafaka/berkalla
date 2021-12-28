import 'package:flutter/material.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          Padding(padding: EdgeInsets.only(top: 10)),
          ListTile(
            horizontalTitleGap: 1.0,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            leading: Icon(
              Icons.money,
              color: Colors.white70,
            ),
            title: Text('Pendapatan'),
          ),
          Divider(),
          ListTile(
            horizontalTitleGap: 1.0,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            leading: Icon(
              Icons.receipt_long,
              color: Colors.white70,
            ),
            title: Text('Laporan'),
          ),
          Divider(),
          ListTile(
            horizontalTitleGap: 1.0,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            leading: Icon(
              Icons.history,
              color: Colors.white70,
            ),
            title: Text('Transaksi'),
          ),
          Divider(),
          ListTile(
            horizontalTitleGap: 1.0,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            leading: Icon(
              Icons.settings,
              color: Colors.white70,
            ),
            title: Text('Pengaturan'),
          ),
          Divider(),
          ListTile(
            horizontalTitleGap: 1.0,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            leading: Icon(
              Icons.live_help,
              color: Colors.white70,
            ),
            title: Text('Bantuan'),
          ),
          Divider(),
          ListTile(
            horizontalTitleGap: 1.0,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            leading: Icon(
              Icons.support_agent,
              color: Colors.white70,
            ),
            title: Text('Layanan Konsumen'),
          ),
          Divider(),
        ]);
  }
}
