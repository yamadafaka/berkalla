import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:twentytwo_project/services/carousel.dart';
import 'package:twentytwo_project/widget/dummy_tenant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;



  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            backgroundColor: const Color(0xFF0F3460),
            elevation: 0,
            title: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: TextField(
                    readOnly: true,
                    onTap: () {},
                    autofocus: false,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Cari Usaha',
                        border: InputBorder.none),
                  ),
                ),
              ),
            )),
        body: Column(
          children: <Widget>[
            //Banner
            CarouselSlider(
              items: generateImage(),
              options: CarouselOptions(
                enlargeCenterPage: false,
                autoPlay: true,
                viewportFraction: 1.0,
              ),
            ),
            //Tab
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Usaha Terpopuler'),
                Tab(text: 'Usaha Terbaru'),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: const [
                  // TenantPopular(), 
                  DummyTenant(),
                  DummyTenant()
                  // TenantNew()
                  ],
              ),
            )
          ],
        ));
  }
}
