import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';

// ignore: must_be_immutable
class GalleryItemWidget extends StatelessWidget {
  GalleryItemWidget();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage99x991,
      height: getSize(
        99,
      ),
      width: getSize(
        99,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          12,
        ),
      ),
    );
  }
}
