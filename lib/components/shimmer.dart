import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLIst extends StatelessWidget {
  final double width;
  final double height;
  final bool shapeLoading;

  const ShimmerLIst(
      {Key? key,
      required this.width,
      required this.height,
      this.shapeLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Shimmer.fromColors(
          baseColor: Colors.grey.shade500,
          highlightColor: Colors.grey.shade100,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: Colors.grey,
                shape: shapeLoading ? BoxShape.circle : BoxShape.rectangle),
          )),
    );
  }
}
