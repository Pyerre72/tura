import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';
import 'package:turakereso/presentation/events_page/events_page.dart';
import 'package:turakereso/widgets/app_bar/appbar_iconbutton.dart';
import 'package:turakereso/widgets/app_bar/appbar_title.dart';
import 'package:turakereso/widgets/app_bar/custom_app_bar.dart';

class EventsTabContainerPage extends StatefulWidget {
  @override
  _EventsTabContainerPageState createState() => _EventsTabContainerPageState();
  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }
}

// ignore_for_file: must_be_immutable
class _EventsTabContainerPageState extends State<EventsTabContainerPage>
    with TickerProviderStateMixin {
  late TabController group41Controller;

  @override
  void initState() {
    super.initState();
    group41Controller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(68),
                leadingWidth: 66,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgSearchGray900,
                    margin: getMargin(left: 28, top: 15, bottom: 15)),
                centerTitle: true,
                title: AppbarTitle(text: "Home"),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgNotificationWhiteA700,
                      margin:
                          getMargin(left: 28, top: 15, right: 28, bottom: 15),
                      onTap: () {
                        onTapNotification(context);
                      })
                ],
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(26),
                          width: getHorizontalSize(409),
                          margin: getMargin(top: 37),
                          child: TabBar(
                              controller: group41Controller,
                              labelColor: ColorConstant.gray900,
                              labelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700),
                              unselectedLabelColor: ColorConstant.gray90066,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700),
                              indicatorColor: ColorConstant.gray900,
                              tabs: [
                                Tab(
                                    child: Text("Anytime",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("Today",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("Tomorrow",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("This Week",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("This Month",
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      Container(
                          height: getVerticalSize(514),
                          child: TabBarView(
                              controller: group41Controller,
                              children: [
                                EventsPage(),
                                EventsPage(),
                                EventsPage(),
                                EventsPage(),
                                EventsPage()
                              ]))
                    ]))));
  }

  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }
}
