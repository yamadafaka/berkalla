import 'package:flutter/material.dart';

class MyBussiness extends StatefulWidget {
  const MyBussiness({Key? key}) : super(key: key);

  @override
  _MyBussinessState createState() => _MyBussinessState();
}

class _MyBussinessState extends State<MyBussiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: [
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(),
          title: Text('Beerman Coffee Cabang Kediri'),
          subtitle: Text('Profit : Rp. 1.000/Hari'),
          trailing: Icon(
            Icons.north,
            color: Colors.green,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(),
          title: Text('PT Citra Bunga Lestari'),
          subtitle: Text('Profit : Rp. 900/Hari'),
          trailing: Icon(
            Icons.south,
            color: Colors.red,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(),
          title: Text('Maju Bersama Cahaya Tbk'),
          subtitle: Text('Profit : Rp. 3.000/Hari'),
          trailing: Icon(
            Icons.north,
            color: Colors.green,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(),
          title: Text('Birman Coffee'),
          subtitle: Text('Profit : Rp. 9.000/Hari'),
          trailing: Icon(
            Icons.north,
            color: Colors.green,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(),
          title: Text('Koala Minanga Bersama'),
          subtitle: Text('Profit : Rp. 100/Hari'),
          trailing: Icon(
            Icons.south,
            color: Colors.red,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(),
          title: Text('Koala Minanga Bersama'),
          subtitle: Text('Profit : Rp. 100/Hari'),
          trailing: Icon(
            Icons.south,
            color: Colors.red,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(),
          title: Text('PT Berkah Abadi Sejahtera'),
          subtitle: Text('Profit : Rp. 200/Hari'),
          trailing: Icon(
            Icons.south,
            color: Colors.red,
          ),
        )
      ],
    ));
  }
}
