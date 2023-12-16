import '../gallery_page/widgets/gallery_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';

// ignore_for_file: must_be_immutable
class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage>
    with AutomaticKeepAliveClientMixin<GalleryPage> {
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
                padding: getPadding(
                  left: 28,
                  top: 30,
                  right: 28,
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(
                      100,
                    ),
                    crossAxisCount: 3,
                    mainAxisSpacing: getHorizontalSize(
                      11,
                    ),
                    crossAxisSpacing: getHorizontalSize(
                      11,
                    ),
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return GalleryItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
