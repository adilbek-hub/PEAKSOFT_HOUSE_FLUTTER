import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchSettingWidget extends StatelessWidget {
  const SearchSettingWidget({
    super.key,
    this.onTap,
    this.onTapSearch,
  });
  final void Function()? onTap;
  final void Function()? onTapSearch;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: onTapSearch,
            child: SvgPicture.asset("assets/svg_images/icon.svg")),
        GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset("assets/svg_images/Vector.svg")),
      ],
    );
  }
}
