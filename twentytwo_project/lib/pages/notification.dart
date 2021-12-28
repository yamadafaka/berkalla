import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twentytwo_project/services/notification_services.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

Future<void> _fetchNotification() async {
  print('refreshing stocks...');
}

var notifications = [
  NotificationModel("1", "Sistem", "Nikmati Promo di Bukalapak"),
  NotificationModel("2", "Sistem", "Pembelian slot di Beerman Coffee Sukses"),
  NotificationModel("3", "Sistem", "Pembelian slot sedang diproses oleh sistem"),
  NotificationModel("4", "Sistem", "Selamat bergabung di Berkalla! Silahkan lengkapi data diri anda"),
  NotificationModel("5", "Sistem", "Konfirmasi Email anda"),
];

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pesan"),
          backgroundColor: const Color(0xFF0F3460),
        ),
        resizeToAvoidBottomInset: false,
        body: RefreshIndicator(
          onRefresh: _fetchNotification,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    var notification = notifications[index];
                    return Card(
                      margin: EdgeInsets.zero,
                      elevation: 0,
                      color: Colors.transparent,
                      child: ListTile(
                        leading: const CircleAvatar(
                          radius: 20,
                        ),
                        title: Text(notification.name),
                        subtitle: Text(notification.message),
                        trailing: const Text("11.05"),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
