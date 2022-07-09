
import 'package:flutter/material.dart';

import '../../FASHION/MyTheme/app_colors.dart';

class SpecialOffer extends StatefulWidget {
  const SpecialOffer({Key? key}) : super(key: key);

  @override
  State<SpecialOffer> createState() => _SpecialOfferState();
}

class _SpecialOfferState extends State<SpecialOffer> {
  List productsCatagories = [
    {'image': 'assets/banner.png', 'name': 'Men', 'price': '\$1000'},
    {'image': 'assets/banner.png', 'name': 'Women', 'price': '\$1000'},
    //{'image': 'assets/pic3.png', 'name': 'Kids','price':'\$2000','discount':'\$2500'},
    //{'image': 'assets/banner.png', 'name': 'Men','price':'\$2000','discount':'\$2500'},
    // {'image': 'assets/banner.png', 'name': 'Women','price':'\$2000','discount':'\$2500'},
    // {'image': 'assets/banner.png', 'name': 'Men','price':'\$2000','discount':'\$2500'},
    // {'image': 'assets/banner.png', 'name': 'Women','price':'\$2000','discount':'\$2500'},
    // {'image': 'assets/pic3.png', 'name': 'Kids','price':'\$2000','discount':'\$2500'},
    // {
    //   'image': 'assets/banner.png',
    //   'name': 'Men',
    //   'price': '\$2000',
    //   'discount': '\$2500'
    // },
    {'image': 'assets/banner.png', 'name': 'Accessories', 'price': '\$1000'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'SPECIAL OFFER',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              shadows: [Shadow(color: Colors.red, offset: Offset(0, -5))],
              color: Colors.transparent,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationThickness: 3,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
          Container(
            width: 170,
            padding: EdgeInsets.all(10),
            child: ListView.builder(
                itemCount: 3,
                // productsCatagories.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 60,
                    // color: Colors.blueAccent,
                    // padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Image.asset(
                              productsCatagories[index]['image'],
                              fit: BoxFit.fill,
                              width: double.infinity,
                              height: 60,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                    width: 88,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(5),
                                      color: appColor().mainColor,
                                    ),
                                    padding: EdgeInsets.only(bottom: 4),
                                    child: Center(
                                        child: Text(
                                      'Shop Now',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ))),
                              ),
                              Text(productsCatagories[index]['price'])
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),

          // Expanded(
          //   child: Container(
          //   child: Column(
          //     children: const[Text('SPECIAL DEALS', style: TextStyle(
          //           shadows: [
          //             Shadow(
          //                 color: Colors.red,
          //                 offset: Offset(0, -5))
          //           ],
          //           color: Colors.transparent,
          //           decoration:
          //           TextDecoration.underline,
          //           decorationColor: Colors.red,
          //           decorationThickness: 2,
          //           decorationStyle:
          //           TextDecorationStyle.solid,
          //         ),)],
          //   )),
          // )
          Row(
            children: [
              Text('VIEW MORE', style: TextStyle(color: appColor().mainColor)),
              Icon(
                Icons.arrow_forward,
                size: 19,
                color: appColor().mainColor
              )
            ],
          )
        ],
      ),
    );
  }
}
