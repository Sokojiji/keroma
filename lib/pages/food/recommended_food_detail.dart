import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:keroma/routes/route_helper.dart';
import 'package:keroma/utils/colors.dart';
import 'package:keroma/utils/dimension.dart';
import 'package:keroma/widgets/app_icon.dart';
import 'package:keroma/widgets/big_text.dart';
import 'package:keroma/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget{
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.toNamed(RouteHelper.getInitial());
                  },
                child: AppIcon(icon: Icons.clear),
                ),
                AppIcon(icon: Icons.shopping_cart_checkout_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(

                child: Center(child: BigText(size:Dimensions.font26,text: "Smocha Mambo yote")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.greenColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/image/food2.jpg",
              width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(


            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: "irbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b th"
                      "irbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtw"
                      "irbv  tr tgh wnzoth 'irhkn b thec ugtwirbv  tr tgh wnzoth 'irhkn b thec ugtw"
                      "irbv  tr tgh wnzoth 'irhkn b thec ugtwec ugtw",),
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(text: "\$12.67 " + " X " + " 0 ", color: AppColors.mainBlackColor,size: Dimensions.font20,),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                    ),


                  ),

                Container(
                  child: BigText(text: "\$12.67 | Add to cart", color: Colors.white),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}