import '../messages_page/widgets/messages_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
  onTapMessage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }
}

class _MessagesPageState extends State<MessagesPage>
    with AutomaticKeepAliveClientMixin<MessagesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 28, top: 31, right: 28),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(28));
                              },
                              itemCount: 7,
                              itemBuilder: (context, index) {
                                return MessagesItemWidget(onTapMessage: () {
                                  onTapMessage(context);
                                });
                              }))
                    ]))));
  }

  onTapMessage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }
}
