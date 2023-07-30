import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:sarsabz/models/Product.dart';
// import 'package:sarsabz/models/O_Product.dart';
// import 'package:sarsabz/screens/details/details_screen.dart';

import '../constants.dart';
import '../size_config.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    // required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  // final Product product;

  
  @override
  Widget build(BuildContext context) {
  var formatter = NumberFormat('###,###,000');

    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () {},
          // onTap: () => Navigator.pushNamed(
            // context,
            // DetailsScreen.routeName,
            // arguments: ProductDetailsArguments(product: product),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // child: Hero(
                    // tag: product.id.toString(),
                    // child: Image.asset(product.image_1),
                  // ),
                ),
              ),
              const SizedBox(height: 10),
              // Text(
                // product.title,
                // style: TextStyle(color: Colors.black),
                // maxLines: 2,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text(
                    // "${formatter.format(product.price.toInt())}",
                    // style: TextStyle(
                      // fontSize: getProportionateScreenWidth(18),
                      // fontWeight: FontWeight.w600,
                      // color: kPrimaryColor,
                    // ),
                  // ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      height: getProportionateScreenWidth(28),
                      width: getProportionateScreenWidth(28),
                      // decoration: BoxDecoration(
                        // color: product.status
                            // ? kPrimaryColor.withOpacity(0.15)
                            // : kSecondaryColor.withOpacity(0.1),
                        // shape: BoxShape.circle,
                      // ),
                      // child: SvgPicture.asset(
                        // "assets/icons/Heart Icon_2.svg",
                        // color: product.status
                            // ? Color(0xFFFF4848)
                            // : Color(0xFFDBDEE4),
                      // ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}