import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';
import 'package:turakereso/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:turakereso/widgets/app_bar/appbar_image.dart';
import 'package:turakereso/widgets/app_bar/appbar_subtitle.dart';
import 'package:turakereso/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:turakereso/widgets/app_bar/custom_app_bar.dart';
import 'package:turakereso/widgets/custom_icon_button.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(62),
                leadingWidth: 66,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft1,
                    margin: getMargin(left: 28, top: 9, bottom: 9),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                title: Padding(
                    padding: getPadding(left: 18),
                    child: Row(children: [
                      AppbarImage(
                          height: getSize(40),
                          width: getSize(40),
                          imagePath: ImageConstant.imgVector1),
                      Padding(
                          padding: getPadding(left: 6, top: 1, bottom: 1),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppbarSubtitle1(text: "Marriet Miles"),
                                AppbarSubtitle(
                                    text: "Online",
                                    margin: getMargin(top: 2, right: 36))
                              ]))
                    ]))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 28, top: 40, right: 28, bottom: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Settings",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold22WhiteA700),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Row(children: [
                            CustomIconButton(
                                height: 38,
                                width: 38,
                                variant: IconButtonVariant.FillWhiteA700,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgUser1)),
                            Padding(
                                padding:
                                    getPadding(left: 18, top: 10, bottom: 7),
                                child: Text("My Account",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16WhiteA700))
                          ])),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Row(children: [
                            CustomIconButton(
                                height: 38,
                                width: 38,
                                variant: IconButtonVariant.OutlineGray50066,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgNotification)),
                            Padding(
                                padding:
                                    getPadding(left: 18, top: 8, bottom: 9),
                                child: Text("Notifications",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16WhiteA700))
                          ])),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Row(children: [
                            CustomIconButton(
                                height: 38,
                                width: 38,
                                variant: IconButtonVariant.OutlineGray50066,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgClock18x18)),
                            Padding(
                                padding:
                                    getPadding(left: 18, top: 10, bottom: 7),
                                child: Text("Activity History",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16WhiteA700))
                          ])),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Row(children: [
                            CustomIconButton(
                                height: 38,
                                width: 38,
                                variant: IconButtonVariant.OutlineGray50066,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgAlarm)),
                            Padding(
                                padding:
                                    getPadding(left: 18, top: 10, bottom: 7),
                                child: Text("Billing and Payment",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSFProDisplayBold16))
                          ])),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Row(children: [
                            CustomIconButton(
                                height: 38,
                                width: 38,
                                variant: IconButtonVariant.OutlineGray50066,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgLock)),
                            Padding(
                                padding:
                                    getPadding(left: 18, top: 10, bottom: 7),
                                child: Text("Security & Privacy",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16WhiteA700))
                          ])),
                      Padding(
                          padding: getPadding(top: 38, bottom: 5),
                          child: Row(children: [
                            CustomIconButton(
                                height: 38,
                                width: 38,
                                variant: IconButtonVariant.OutlineGray50066,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgSettings18x18)),
                            Padding(
                                padding:
                                    getPadding(left: 18, top: 10, bottom: 7),
                                child: Text("Help",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16WhiteA700))
                          ]))
                    ]))));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
