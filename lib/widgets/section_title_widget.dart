import 'package:e_commerce/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child:
          Align(alignment: Alignment.topLeft, child: TextWidget(text: title)),
    );
  }
}
