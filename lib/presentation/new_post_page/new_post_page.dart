import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';
import 'package:turakereso/widgets/app_bar/appbar_image_1.dart';
import 'package:turakereso/widgets/app_bar/custom_app_bar.dart';
import 'package:turakereso/widgets/custom_button.dart';
import 'package:turakereso/widgets/custom_icon_button.dart';
import 'package:turakereso/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NewPostPage extends StatelessWidget {
  TextEditingController languageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            70,
          ),
          leadingWidth: 66,
          leading: AppbarImage1(
            height: getVerticalSize(
              37,
            ),
            width: getHorizontalSize(
              38,
            ),
            imagePath: ImageConstant.imgAvatar37x381,
            margin: getMargin(
              left: 28,
              top: 9,
              bottom: 9,
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 8,
            ),
            child: Text(
              "Anne Carry",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterMedium14Gray900,
            ),
          ),
          actions: [
            CustomButton(
              height: getVerticalSize(
                30,
              ),
              width: getHorizontalSize(
                67,
              ),
              text: "Post",
              margin: getMargin(
                left: 28,
                top: 13,
                right: 28,
                bottom: 12,
              ),
              variant: ButtonVariant.FillIndigoA200,
              padding: ButtonPadding.PaddingT5_1,
              suffixWidget: Container(
                margin: getMargin(
                  left: 5,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgCheckmark18x18,
                ),
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: languageController,
                hintText: "What are you thinking? ",
                margin: getMargin(
                  left: 28,
                  top: 14,
                  right: 28,
                ),
                variant: TextFormFieldVariant.FillGray10001,
                padding: TextFormFieldPadding.PaddingT31,
                textInputAction: TextInputAction.done,
              ),
              Spacer(),
              Container(
                width: double.maxFinite,
                child: Container(
                  width: double.maxFinite,
                  padding: getPadding(
                    left: 28,
                    top: 22,
                    right: 28,
                    bottom: 22,
                  ),
                  decoration: AppDecoration.fillGray100.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL32,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgIndicatoronlight,
                        height: getVerticalSize(
                          5,
                        ),
                        width: getHorizontalSize(
                          38,
                        ),
                        alignment: Alignment.center,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 21,
                        ),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 38,
                              width: 38,
                              variant: IconButtonVariant.FillGray900,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgSettings,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 10,
                                bottom: 10,
                              ),
                              child: Text(
                                "Add Photo",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold14Gray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 28,
                        ),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 38,
                              width: 38,
                              variant: IconButtonVariant.FillGray900,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgVideocamera,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 10,
                                bottom: 10,
                              ),
                              child: Text(
                                "Add Video",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold14Gray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 28,
                        ),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 38,
                              width: 38,
                              variant: IconButtonVariant.FillGray900,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgCamera18x18,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 11,
                                bottom: 9,
                              ),
                              child: Text(
                                "Tag a Friend",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold14Gray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 28,
                        ),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 38,
                              width: 38,
                              variant: IconButtonVariant.FillGray900,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 10,
                                bottom: 10,
                              ),
                              child: Text(
                                "Write an Article",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold14Gray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 28,
                          bottom: 128,
                        ),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 38,
                              width: 38,
                              variant: IconButtonVariant.OutlineGray50066,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgOverflowmenu1,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 11,
                                bottom: 9,
                              ),
                              child: Text(
                                "More Options",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold14Gray900,
                              ),
                            ),
                          ],
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
