import 'package:flutter/material.dart';
import 'package:twentytwo_project/pages/tenant_bussiness_detail.dart';

class TenantBussiness extends StatefulWidget {
  const TenantBussiness({Key? key}) : super(key: key);

  @override
  _TenantBussinessState createState() => _TenantBussinessState();
}

class _TenantBussinessState extends State<TenantBussiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://fastly.4sqi.net/img/general/200x200/47773573_qdb4MRFyllAcWzB-IYFaaJl0j-NiUtuGoPcfrVIQxJ4.jpg'),
          ),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => TenantBussinessDetail()));
          },
          title: Text('Beerman Coffee Cabang Kediri'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://fastly.4sqi.net/img/general/200x200/47773573_qdb4MRFyllAcWzB-IYFaaJl0j-NiUtuGoPcfrVIQxJ4.jpg'),
          ),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => TenantBussinessDetail()));
          },
          title: Text('Beerman Coffee Cabang Manokwari'),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => TenantBussinessDetail()));
          },
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://fastly.4sqi.net/img/general/200x200/47773573_qdb4MRFyllAcWzB-IYFaaJl0j-NiUtuGoPcfrVIQxJ4.jpg'),
          ),
          title: Text('Beerman Coffee Cabang Aceh'),
        ),
      ],
    ));
  }
}
