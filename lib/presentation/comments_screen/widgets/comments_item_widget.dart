import 'package:flutter/material.dart';
import 'package:turakereso/core/app_export.dart';

// ignore: must_be_immutable
class CommentsItemWidget extends StatelessWidget {
  CommentsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAvatar28x281,
                height: getSize(
                  28,
                ),
                width: getSize(
                  28,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 5,
                  top: 6,
                  bottom: 4,
                ),
                child: Text(
                  "Billy Green",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium14WhiteA700,
                ),
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  top: 7,
                  bottom: 5,
                ),
                child: Text(
                  "20min ago",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12,
                ),
              ),
            ],
          ),
          Container(
            width: getHorizontalSize(
              302,
            ),
            margin: getMargin(
              top: 11,
              right: 7,
            ),
            child: Text(
              "Awesome Edward, remember that five tips for low cost holidays I sent you?",
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular14WhiteA700,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Row(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgFavorite14x14,
                  height: getSize(
                    14,
                  ),
                  width: getSize(
                    14,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgLocation,
                  height: getSize(
                    14,
                  ),
                  width: getSize(
                    14,
                  ),
                  margin: getMargin(
                    left: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
