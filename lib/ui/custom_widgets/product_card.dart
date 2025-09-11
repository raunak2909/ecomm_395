import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  String imgPath;
  String name;
  String price;

  ProductCard({
    required this.imgPath,
    required this.name,
    required this.price,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int selectedIndex = 0;

  List<Color> mColors = [
    Colors.black,
    Colors.blue,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset("assets/icons/ic_logo.png", width: 150, height: 150,)),
                SizedBox(
                  height: 11,
                ),
                Text(widget.name, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text(widget.price),
                    Spacer(),
                    SizedBox(
                      height: 24,
                      child: Row(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: mColors.length,
                            itemBuilder: (_, index){
                              return InkWell(
                                onTap: (){
                                  selectedIndex = index;
                                  setState(() {});
                                },
                                child: selectedIndex == index ? Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: mColors[index], width: 1)
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 2),
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: mColors[index]
                                    ),
                                  ),
                                ) : Container(
                                  margin: EdgeInsets.symmetric(horizontal: 2),
                                  width: 22,
                                  height: 22,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: mColors[index]
                                  ),
                                ),
                              );
                            },
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey)
                            ),
                            child: Center(
                              child: Text("+2", style: TextStyle(color: Colors.grey, fontSize: 12),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
              right: 0,
              child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              )
            ),
                child: Center(
                  child: Icon(Icons.favorite_border, color: Colors.white,),
                ),
          ))
        ],
      ),
    );
  }
}
