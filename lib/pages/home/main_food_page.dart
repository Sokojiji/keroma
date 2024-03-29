import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:keroma/pages/home/food_page_body.dart';
import 'package:keroma/utils/colors.dart';
import 'package:keroma/utils/dimension.dart';
import 'package:keroma/widgets/big_text.dart';
import 'package:keroma/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget{
  const MainFoodPage({Key? key}) : super(key: key);
  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
   // print("current height is " + MediaQuery
      //  .of(context)
       // .size
       // .height
      //  .toString()); // current height is 805.5
    return Scaffold(
        body:  Column(
              children: [
                // showing the header
                Container(
                  margin: EdgeInsets.only(
                      top: Dimensions.height45, bottom: Dimensions.height15),
                  padding: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          BigText(text: "Kenya", color: AppColors.mainColor),
                          Row(
                            children: [
                              SmallText(text: "Nairobi", color: Colors.black54),
                              Icon(Icons.arrow_drop_down_rounded)
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 45,
                        height: Dimensions.height45,
                        child: Icon(Icons.search, color: Colors.white,
                          size: Dimensions.iconSize24,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              Dimensions.radius15),
                          color: AppColors.mainColor,
                        ),
                      )
                    ],
                  ),
                ),
                // showing the body
                Expanded(child: SingleChildScrollView(
                  child: FoodPageBody(),
                )),
              ],
            )
    );
  }
}
