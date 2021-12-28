import 'package:flutter/material.dart';
import 'package:twentytwo_project/pages/tenant_detail.dart';

class DummyTenant extends StatefulWidget {
  const DummyTenant({Key? key}) : super(key: key);

  @override
  _DummyTenantState createState() => _DummyTenantState();
}

Future _nothing() async {}

final List<String> tenant = <String>[
  'Beerman Coffee', 
  'Alexist Kitchen & Food', 
  'Koala Travel',
  'Basinggah Resto',
  'Mandalika Car Wash',
  'Optimus Garage'];
final List<int> slot = <int>[20, 100, 100, 90, 100, 100];

class _DummyTenantState extends State<DummyTenant> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: _nothing,
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: tenant.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://baconmockup.com/640/360'),
              ),
              title: Text('${tenant[index]}'),
              subtitle: Text('Slot tersedia : ${slot[index]}'),
              onTap: (){
                Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => TenantDetailPage()));
              },
            );
          },
        ));
  }
}
