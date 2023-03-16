import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simplone_final/utils/constants.dart';

import '../../../utils/size_config.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.illustration,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String? illustration, title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title!,
          style: kHeadlineTextStyle,
        ),
        Expanded(
          child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.height * 0.3,
              child: SvgPicture.asset(illustration!)),
        ),
        VerticalSpacing(of: 50),
        VerticalSpacing(of: 8),
        Text(
          text!,
          style: kBodyTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
