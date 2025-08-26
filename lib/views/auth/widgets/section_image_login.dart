import 'package:flutter/material.dart';

import '../../../generated/assets.dart';

class SectionImageInLogin extends StatelessWidget {
  const SectionImageInLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 24),
      child: Image.asset(Assets.imagesLogoBackground, fit: BoxFit.fill),
    );
  }
}
