import '../single_event_screen/widgets/single_event_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';
import 'package:turakereso/widgets/custom_button.dart';

class SingleEventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: getPadding(
                    left: 168,
                    top: 22,
                    right: 168,
                    bottom: 22,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL32,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgIndicatoronlightGray900,
                        height: getVerticalSize(
                          5,
                        ),
                        width: getHorizontalSize(
                          38,
                        ),
                        margin: getMargin(
                          bottom: 701,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(
                    left: 28,
                    top: 77,
                    right: 28,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgAvatar38x386,
                            height: getSize(
                              38,
                            ),
                            width: getSize(
                              38,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Gunther Ackner",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14Gray900,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 4,
                                  ),
                                  child: Text(
                                    "3 days ago",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          CustomButton(
                            height: getVerticalSize(
                              30,
                            ),
                            width: getHorizontalSize(
                              101,
                            ),
                            text: "Interested",
                            margin: getMargin(
                              top: 4,
                              bottom: 4,
                            ),
                            padding: ButtonPadding.PaddingAll8,
                          ),
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage168x3191,
                        height: getVerticalSize(
                          168,
                        ),
                        width: getHorizontalSize(
                          319,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            8,
                          ),
                        ),
                        margin: getMargin(
                          top: 29,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          241,
                        ),
                        margin: getMargin(
                          top: 29,
                          right: 77,
                        ),
                        child: Text(
                          "2019 DUB Show at Los Angeles Auto Show",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold22,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                          right: 124,
                        ),
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                28,
                              ),
                            );
                          },
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return SingleEventItemWidget();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
