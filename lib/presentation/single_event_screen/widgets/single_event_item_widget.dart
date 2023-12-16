import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';

// ignore: must_be_immutable
class SingleEventItemWidget extends StatelessWidget {
  SingleEventItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgRewind48x48,
          height: getSize(
            48,
          ),
          width: getSize(
            48,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 10,
            top: 6,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold14Gray900,
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
