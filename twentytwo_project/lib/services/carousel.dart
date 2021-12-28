import 'package:flutter/material.dart';

List<String> image = [
  "https://s3.theasianparent.com/cdn-cgi/image/height=412/tap-assets-prod/wp-content/uploads/sites/24/2019/08/promo-kemerdekaan-L.jpg",  
  "https://images.bisnis-cdn.com/posts/2021/09/14/1442215/shopee-10.10-brands-festival1.jpg",
  "https://static.misteraladin.com/images/template-landing-page/612000000000000000000000/612dff2486221f46405ce228/extra-baper-pesan-hotel-1630404388.jpg",
];

List<Widget> generateImage(){
  return image.map((element) => Image.network(element,
  fit: BoxFit.cover,width: 1000.0)).toList();
}



