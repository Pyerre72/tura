import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';
import 'package:turakereso/widgets/custom_button.dart';
import 'package:turakereso/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController group2816Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage287x375,
                      height: getVerticalSize(287),
                      width: getHorizontalSize(375),
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(
                              left: 28, top: 39, right: 28, bottom: 39),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL32),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Welcome Back! ",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold22),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Text("Login to continue ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                Padding(
                                    padding: getPadding(top: 28),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.indigo600,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                              child: Container(
                                                  height: getVerticalSize(58),
                                                  width: getHorizontalSize(99),
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 20,
                                                      right: 40,
                                                      bottom: 20),
                                                  decoration: AppDecoration
                                                      .fillIndigo600
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFacebook,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        alignment: Alignment
                                                            .centerLeft)
                                                  ]))),
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.gray900,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                              child: Container(
                                                  height: getVerticalSize(58),
                                                  width: getHorizontalSize(99),
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 20,
                                                      right: 40,
                                                      bottom: 20),
                                                  decoration: AppDecoration
                                                      .fillGray900
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgIconapple,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        alignment: Alignment
                                                            .centerLeft)
                                                  ]))),
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: ColorConstant
                                                          .gray50066,
                                                      width:
                                                          getHorizontalSize(2)),
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                              child: Container(
                                                  height: getVerticalSize(58),
                                                  width: getHorizontalSize(99),
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 20,
                                                      right: 40,
                                                      bottom: 20),
                                                  decoration: AppDecoration
                                                      .outlineGray50066
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgGoogle,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        alignment: Alignment
                                                            .centerLeft)
                                                  ])))
                                        ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 21),
                                        child: Text(
                                            "Or connect with your email",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular12))),
                                Padding(
                                    padding: getPadding(top: 31),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Email".toUpperCase(),
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold12
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              1.0))),
                                          CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller: emailController,
                                              hintText: "user@mail.com",
                                              margin: getMargin(top: 12),
                                              textInputType:
                                                  TextInputType.emailAddress,
                                              suffix: Container(
                                                  margin: getMargin(
                                                      left: 30,
                                                      top: 15,
                                                      right: 15,
                                                      bottom: 15),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgTelevision)),
                                              suffixConstraints: BoxConstraints(
                                                  maxHeight:
                                                      getVerticalSize(48)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Text("Password".toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold12.copyWith(
                                            letterSpacing:
                                                getHorizontalSize(1.0)))),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group2816Controller,
                                    hintText: "Password@123",
                                    margin: getMargin(top: 12),
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 12,
                                            right: 12,
                                            bottom: 12),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgEye)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(48)),
                                    isObscureText: true),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(top: 21),
                                        child: Text("Forgot Password?",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular14))),
                                CustomButton(
                                    height: getVerticalSize(58),
                                    text: "Login",
                                    margin: getMargin(top: 19),
                                    variant: ButtonVariant.FillIndigoA200,
                                    shape: ButtonShape.CircleBorder29,
                                    padding: ButtonPadding.PaddingAll19,
                                    fontStyle:
                                        ButtonFontStyle.InterBold14WhiteA700,
                                    onTap: () {
                                      onTapLogin(context);
                                    }),
                                CustomButton(
                                    height: getVerticalSize(58),
                                    text: "Create an account",
                                    margin: getMargin(top: 18, bottom: 16),
                                    variant: ButtonVariant.OutlineGray50066,
                                    shape: ButtonShape.CircleBorder29,
                                    padding: ButtonPadding.PaddingAll19,
                                    fontStyle:
                                        ButtonFontStyle.InterBold14Gray900_1,
                                    onTap: () {
                                      onTapCreateanaccountOne(context);
                                    })
                              ])))
                ]))));
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  onTapCreateanaccountOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
