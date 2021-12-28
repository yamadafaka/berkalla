import 'package:flutter/material.dart';

class TenantDescription extends StatefulWidget {
  const TenantDescription({ Key? key }) : super(key: key);

  @override
  _TenantDescriptionState createState() => _TenantDescriptionState();
}

class _TenantDescriptionState extends State<TenantDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            ListTile(
              title: Center(child: Text("Jangan Biarkan Kopimu Dingin!")),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text("Bagi pecinta kopi, kopi ibaratkan teman yang selalu ada menemani disaat suka maupun duka.\nOleh karena itu Beerman mencoba untuk selalu menjadi tempat terbaik untuk menikmati kopi."),
              ),
            ),
          ],
        )
      ],
    );
  }
}