import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:keroma/controllers/popular_product_controller.dart';
import 'package:keroma/pages/home/main_food_page.dart';
import 'package:keroma/utils/colors.dart';

import 'package:keroma/utils/dimension.dart';
import 'package:keroma/widgets/app_column.dart';
import 'package:keroma/widgets/app_icon.dart';
import 'package:keroma/widgets/big_text.dart';
import 'package:keroma/widgets/expandable_text_widget.dart';


class PopularFoodDetail extends StatelessWidget{
  int pageId;
  PopularFoodDetail({Key? key, required this.pageId}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    var product= Get.find<PopularProductController>().popularProductList[pageId];
    print("page is id"+pageId.toString());
    print("product name is id"+product.name.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover ,
                    image: AssetImage(
                      "assets/image/food2.png"
                    )
                  )
                ),
              )),
          //icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                onTap: (){
                  Get.to(()=>MainFoodPage());
                },
              child:
                  AppIcon(icon: Icons.arrow_back_ios)),
                  AppIcon(icon: Icons.shopping_cart_checkout_outlined)
              ],
          )),
          //Intro food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize-20,
              child:
            Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Smocha Large",),
                  SizedBox(height: Dimensions.height20,),
                  BigText(text: "Description"),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(text: "Yd rfrt dohfnm btombv np;otr nkfngp;df noierg vtr dfg owthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghwthoivdfghowthoi"
                          "vdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfghowthoivdfgh  g'dgitb gfhn p dydfgp b    hl gt c;n dfoir ;v bn ot nb"),
                    ),
                  )
                ],
              ),

            )
          ),
          //
        ],
      ) ,
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),
          )
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: AppColors.signColor,),

                ],
              ),
            ),
            Container(
              child: BigText(text: "\$100 | Add to cart", color: Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor
              ),
            )
          ],
        ),
      ),
    );
  }
  
}

