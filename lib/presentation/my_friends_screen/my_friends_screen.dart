import '../my_friends_screen/widgets/my_friends_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';
import 'package:turakereso/widgets/app_bar/custom_app_bar.dart';
import 'package:turakereso/widgets/custom_icon_button.dart';
import 'package:turakereso/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyFriendsScreen extends StatelessWidget {
  TextEditingController fieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(top: 10, bottom: 10),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(64),
                                        leadingWidth: 66,
                                        leading: CustomIconButton(
                                            height: 38,
                                            width: 38,
                                            margin: getMargin(
                                                left: 28, top: 5, bottom: 5),
                                            variant: IconButtonVariant
                                                .FillIndigoA200,
                                            onTap: () {
                                              onTapBtnArrowleft(context);
                                            },
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftWhiteA700)),
                                        title: CustomTextFormField(
                                            width: getHorizontalSize(271),
                                            focusNode: FocusNode(),
                                            controller: fieldController,
                                            hintText: "Search in friends",
                                            margin: getMargin(left: 10),
                                            variant: TextFormFieldVariant
                                                .FillGray5006c,
                                            padding: TextFormFieldPadding
                                                .PaddingT15_2,
                                            textInputAction:
                                                TextInputAction.done,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 15,
                                                    top: 16,
                                                    right: 10,
                                                    bottom: 16),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSearchGray500)),
                                            prefixConstraints: BoxConstraints(
                                                maxHeight:
                                                    getVerticalSize(48))))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 28, top: 16, right: 28),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(8));
                              },
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return MyFriendsItemWidget();
                              }))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
