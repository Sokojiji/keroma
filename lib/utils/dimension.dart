import 'package:get/get.dart';
//play sauti sol - Dimensions... uko fully focused kweli?
class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageView = screenHeight/2.52; //805.5/320 = 2.517
  static double pageViewContainer = screenHeight/3.66; // 805.5/220 = 3.66136
  static double pageViewTextContainer = screenHeight/6.7125; // 805.5/120= 6.7125
// dynamic height padding and margin
  static double height10 = screenHeight/80.55;
  static double height15 = screenHeight/53.1;
  static double height20 = screenHeight/40.275;
  static double height30 = screenHeight/26.85;
  static double height45 = screenHeight/17.9;
// dynamic width padding and margin
  static double width10 = screenHeight/80.55;
  static double width15 = screenHeight/53.1;
  static double width20 = screenHeight/40.275;
  static double width30 = screenHeight/26.85;
//font size
  static double font20 = screenHeight/40.275;
  static double font16 = screenHeight/50.34;
  static double font26 = screenHeight/33.25;
//radius
  static double radius15 = screenHeight/53.7;
  static double radius20 = screenHeight/40.275;
  static double radius30 = screenHeight/26.85;
// icon size
  static double iconSize24 = screenHeight/33.56;
  static double iconSize16 = screenHeight/53.1;
  //list view size
  static double listViewImgSize =  screenWidth/3.25;
  static double listViewTextContSize = screenWidth/3.9;

  //popular food
  static double popularFoodImgSize = screenHeight/2.3;

  //bottom height
  static double bottomHeightBar = screenHeight/6.87;

}