import 'package:flutter/cupertino.dart';
import 'package:ui_entrance_test/dimen/dimens_main_view.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    Key? key,
    required this.top,
    this.left,
    this.right,
    required this.colors,
    required this.size,
    this.isPaddingLeft
  }) : super(key: key);
  final double top;
  final double? left;
  final double? right;
  final Color colors;
  final DimensMainView size;
  final bool? isPaddingLeft;
  @override
  Widget build(BuildContext context) {
    return isPaddingLeft! ? Positioned(
      top: top,
      left: left,
      child: Row(
        children: [
          Container(
            width: size.containerCircle,
            height: size.containerCircle,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              boxShadow: [
                BoxShadow(
                  color: colors,
                  spreadRadius: size.spreadRadius,
                  blurRadius: size.blurRadius,
                  offset: Offset(
                      size.offsetShadow,
                      size.offsetShadow
                  ), // changes position of shadow
                ),
              ],
            ),
          ),
        ],
      ),
    ) : Positioned(
      top: top,
      right: right,
      child: Row(
        children: [
          Container(
            width: size.containerCircle,
            height: size.containerCircle,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              boxShadow: [
                BoxShadow(
                  color: colors,
                  spreadRadius: size.spreadRadius,
                  blurRadius: size.blurRadius,
                  offset: Offset(
                      size.offsetShadow,
                      size.offsetShadow
                  ), // changes position of shadow
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
