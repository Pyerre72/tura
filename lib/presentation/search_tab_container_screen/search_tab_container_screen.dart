import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';
import 'package:turakereso/presentation/search_page/search_page.dart';
import 'package:turakereso/widgets/app_bar/appbar_image.dart';
import 'package:turakereso/widgets/app_bar/custom_app_bar.dart';
import 'package:turakereso/widgets/custom_search_view.dart';

class SearchTabContainerScreen extends StatefulWidget {
  @override
  _SearchTabContainerScreenState createState() =>
      _SearchTabContainerScreenState();
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class _SearchTabContainerScreenState extends State<SearchTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  TextEditingController fieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(72),
                leadingWidth: 66,
                leading: AppbarImage(
                    height: getSize(38),
                    width: getSize(38),
                    svgPath: ImageConstant.img29e10bc5c8e94190bb789e12a33570e3,
                    margin: getMargin(left: 28, top: 9, bottom: 8),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                title: CustomSearchView(
                    width: getHorizontalSize(271),
                    focusNode: FocusNode(),
                    controller: fieldController,
                    hintText: "Search in social…",
                    margin: getMargin(left: 10),
                    prefix: Container(
                        margin:
                            getMargin(left: 15, top: 11, right: 10, bottom: 11),
                        child: CustomImageView(
                            svgPath: ImageConstant
                                .img8082afb05720484ba3e97f5f2d4c3841)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(39)),
                    suffix: Padding(
                        padding: EdgeInsets.only(right: getHorizontalSize(15)),
                        child: IconButton(
                            onPressed: () {
                              fieldController.clear();
                            },
                            icon: Icon(Icons.clear,
                                color: Colors.grey.shade600))))),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 28, top: 43),
                          child: Text("Explore Stories",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold22WhiteA700)),
                      Container(
                          height: getVerticalSize(28),
                          width: getHorizontalSize(347),
                          margin: getMargin(top: 27),
                          child: TabBar(controller: tabController, tabs: [
                            Tab(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Text("For You",
                                      overflow: TextOverflow.ellipsis),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgDot,
                                      height: getVerticalSize(2),
                                      width: getHorizontalSize(48),
                                      margin: getMargin(top: 7))
                                ])),
                            Tab(
                                child: Text("Following",
                                    overflow: TextOverflow.ellipsis)),
                            Tab(
                                child: Text("Popular",
                                    overflow: TextOverflow.ellipsis)),
                            Tab(
                                child: Text("Featured",
                                    overflow: TextOverflow.ellipsis)),
                            Tab(
                                child: Text("Live",
                                    overflow: TextOverflow.ellipsis))
                          ])),
                      Container(
                          height: getVerticalSize(569),
                          child: TabBarView(
                              controller: tabController,
                              children: [
                                SearchPage(),
                                SearchPage(),
                                SearchPage(),
                                SearchPage(),
                                SearchPage()
                              ]))
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
