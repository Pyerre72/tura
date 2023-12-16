import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';
import 'package:turakereso/widgets/app_bar/appbar_image.dart';
import 'package:turakereso/widgets/app_bar/appbar_image_1.dart';
import 'package:turakereso/widgets/app_bar/custom_app_bar.dart';
import 'package:turakereso/widgets/custom_text_form_field.dart';

class SingleStoryScreen extends StatelessWidget {
  TextEditingController frameTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        resizeToAvoidBottomInset: false,
        body: Container(
          height: getVerticalSize(
            668,
          ),
          width: double.maxFinite,
          padding: getPadding(
            top: 18,
            bottom: 18,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbnail622x3751,
                height: getVerticalSize(
                  622,
                ),
                width: getHorizontalSize(
                  375,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    12,
                  ),
                ),
                alignment: Alignment.center,
              ),
              CustomAppBar(
                height: getVerticalSize(
                  56,
                ),
                leadingWidth: 56,
                leading: AppbarImage1(
                  height: getSize(
                    38,
                  ),
                  width: getSize(
                    38,
                  ),
                  imagePath: ImageConstant.imgAvatar38x385,
                  margin: getMargin(
                    left: 18,
                  ),
                ),
                title: AppbarImage(
                  height: getVerticalSize(
                    5,
                  ),
                  width: getHorizontalSize(
                    293,
                  ),
                  svgPath: ImageConstant.imgSlide,
                  margin: getMargin(
                    left: 8,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 28,
            right: 28,
            bottom: 52,
          ),
          padding: getPadding(
            left: 10,
            top: 7,
            right: 10,
            bottom: 7,
          ),
          decoration: AppDecoration.outlineGray5006c.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: frameTwoController,
                  hintText: "Write a comment…",
                  margin: getMargin(
                    bottom: 1,
                  ),
                  variant: TextFormFieldVariant.FillGray900,
                  padding: TextFormFieldPadding.PaddingT7,
                  fontStyle: TextFormFieldFontStyle.InterMedium14WhiteA700_1,
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                    margin: getMargin(
                      left: 12,
                      top: 10,
                      right: 8,
                      bottom: 9,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIconEmoji,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      33,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgSend,
                height: getSize(
                  14,
                ),
                width: getSize(
                  14,
                ),
                margin: getMargin(
                  left: 7,
                  top: 10,
                  right: 5,
                  bottom: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
