import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../custom_widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> bannerImages = [
    "https://mir-s3-cdn-cf.behance.net/project_modules/fs/3ce709113389695.60269c221352f.jpg",
    "https://picsum.photos/id/1016/800/400",
    "https://picsum.photos/id/1018/800/400",
    "https://picsum.photos/id/1021/800/400",
  ];

  List<Map<String, dynamic>> productData = [
    {
      "productImgUrl": "https://picsum.photos/id/1015/800/400",
      "productText": "Wireless Headphones",
      "productPrice": "\$120.00",
    },
    {
      "productImgUrl": "https://picsum.photos/id/1016/800/400",
      "productText": "Woman Sweter",
      "productPrice": "\$120.00",
    },
    {
      "productImgUrl": "https://picsum.photos/id/1015/800/400",
      "productText": "Wireless Headphones",
      "productPrice": "\$120.00",
    },
    {
      "productImgUrl": "https://picsum.photos/id/1016/800/400",
      "productText": "Woman Sweter",
      "productPrice": "\$120.00",
    },
    {
      "productImgUrl": "https://picsum.photos/id/1015/800/400",
      "productText": "Wireless Headphones",
      "productPrice": "\$120.00",
    },
    {
      "productImgUrl": "https://picsum.photos/id/1016/800/400",
      "productText": "Woman Sweter",
      "productPrice": "\$120.00",
    },
    {
      "productImgUrl": "https://picsum.photos/id/1015/800/400",
      "productText": "Wireless Headphones",
      "productPrice": "\$120.00",
    },
    {
      "productImgUrl": "https://picsum.photos/id/1016/800/400",
      "productText": "Woman Sweter",
      "productPrice": "\$120.00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              ListTile(
                contentPadding: EdgeInsets.only(left: 0, right: 0),
                leading: Container(
                  width: 40,
                  height: 40,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Icon(Icons.dashboard),
                ),
                trailing: Container(
                  width: 40,
                  height: 40,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Icon(Icons.notifications_outlined),
                ),
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    enabled: true,
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.black38),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black38,
                    ),
                    suffixIcon: SizedBox(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 2,
                            height: 30,
                            color: Colors.black38,
                          ),
                          Icon(
                            Icons.filter_list,
                            size: 30,
                            color: Colors.black38,
                          ),
                        ],
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, top: 10, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider.builder(
                      itemCount: bannerImages.length,
                      itemBuilder: (_, index, __) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: NetworkImage(bannerImages[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 1,
                        height: 200,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayInterval: Duration(seconds: 4),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Example Categories Row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildCategory("Shoes", Icons.shopping_bag),
                          _buildCategory("Clothes", Icons.checkroom),
                          _buildCategory("Watches", Icons.watch),
                          _buildCategory("Phones", Icons.phone_android),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),

                    ///from wallpaper app
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Special For You",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 150),
                          width: double.infinity,
                          child: GridView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  mainAxisSpacing: 11,
                                  crossAxisSpacing: 11,
                                  childAspectRatio: 8 / 9,
                                ),
                            itemCount: productData.length,
                            itemBuilder: (_, index) {
                              return ProductCard(
                                imgPath: productData[index]["productImgUrl"],
                                name: productData[index]["productText"],
                                price: productData[index]["productPrice"],
                              );
                              /*return Container(
                                      width: 500,
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              */ /*color: Colors.blueGrey*/ /*
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  productData[index]['productImgUrl']
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            productData[index]
                                            ['productText'],
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );*/
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategory(String title, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.deepPurple.shade100,
          child: Icon(icon, color: Colors.deepPurple),
        ),
        SizedBox(height: 5),
        Text(title, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
