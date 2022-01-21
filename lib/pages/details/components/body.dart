import 'package:flutter/material.dart';
import 'package:food_app/pages/details/components/title_price_rating.dart';
import 'package:food_app/palette/palette.dart';

import 'item_image.dart';
import 'order_button.dart';

class Body extends StatelessWidget {
  String uri;
  String name;
  String price;

  Body(this.uri, this.name, this.price);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ItemImage(
            imgSrc: uri,
          ),
          Container(
           // height: MediaQuery.of(context).size.height / 2,
            child: ItemInfo(name, price),
          ),
        ],
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  final String name;
 final String price;
  const ItemInfo(this.name, this.price,{
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: "MacDonalds"),
          TitlePriceRating(
            name: name,
            numOfReviews: 24,
            rating: 4,
            price: price,
            onRatingChanged: (value) {},
          ),
          Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          OrderButton(
            size: size,
            press: () {},
          )
        ],
      ),
    );
  }

  Row shopeName({required String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: Palette.primaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
