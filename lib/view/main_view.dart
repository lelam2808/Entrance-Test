import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_entrance_test/config/constant_images.dart';
import 'package:ui_entrance_test/dimen/dimens_main_view.dart';
import 'package:ui_entrance_test/dimen/dimens_manager.dart';
import 'package:ui_entrance_test/view/widgets/circle_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late DimensMainView viewSize;

  @override
  void initState() {
    DimensManager();
    viewSize = DimensManager.mainDimension;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        DimensManager.mainDimension.allowCalculatorSize(
            context: context,
            calculatorSizeFunc: () {
              DimensManager.instance.calculatorRatio<HomeView>(context);
            });
        return Stack(
          children: [
            CircleWidget(
              top: viewSize.topBlue,
              right: viewSize.rightBlue,
              colors: Colors.blueAccent.withOpacity(
                  viewSize.opacity
              ),
              size: viewSize,
              isPaddingLeft: false,
            ),
            CircleWidget(
              top: viewSize.topRed,
              left: viewSize.leftRed,
              colors: Colors.redAccent.withOpacity(
                  viewSize.opacity
              ),
              size: viewSize,
              isPaddingLeft: true,
            ),
            Positioned(
              top: viewSize.positionTop,
              left: viewSize.positionLeft,
              child: SvgPicture.asset(
                ConstantImages.swiftImage,
                height: viewSize.heightImage,
                width: viewSize.heightImage,
              ),
            ),
          ],
        );
      }),
    );
  }
}