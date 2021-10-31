import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/size_config.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
            child: SizedBox(
              width: double.infinity,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6.0),
                      topRight: Radius.circular(6.0)
                  ),
                  child: Image.asset('assets/images/demo_category.png',
                      fit: BoxFit.fill)
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text('Back Cover for Samsumg A7',
                  style: TextStyle(
                      fontSize: getResponsiveWidth(30, 40),
                      color: kTitleTextColor
                  ),
                )
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text('BDT 3500.00',
                  style: TextStyle(
                      fontSize: getResponsiveWidth(25, 35),
                      fontWeight: FontWeight.bold,
                      color: kTitleTextColor
                  )
                )
            ),
          ),

            Container(
              margin: EdgeInsets.only(left: 4),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(6)
              ),
              child: Text('-20% OFF',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: getResponsiveWidth(30, 40),
                ),
                textAlign: TextAlign.justify,),
            ),

        ],
      ),
    );
  }
}
