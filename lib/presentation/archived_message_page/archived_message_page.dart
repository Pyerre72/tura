import '../archived_message_page/widgets/listavatar_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';

class ArchivedMessagePage extends StatefulWidget {
  @override
  _ArchivedMessagePageState createState() => _ArchivedMessagePageState();
  onTapMessage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.groupChatScreen);
  }
}

class _ArchivedMessagePageState extends State<ArchivedMessagePage>
    with AutomaticKeepAliveClientMixin<ArchivedMessagePage> {
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
                                return SizedBox(height: getVerticalSize(39));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return ListavatarItemWidget(onTapMessage: () {
                                  onTapMessage(context);
                                });
                              }))
                    ]))));
  }

  onTapMessage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.groupChatScreen);
  }
}
