import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchSettingWidget extends StatelessWidget {
  const SearchSettingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/svg_images/icon.svg"),
        SvgPicture.asset("assets/svg_images/Vector.svg"),
      ],
    );
  }
}
