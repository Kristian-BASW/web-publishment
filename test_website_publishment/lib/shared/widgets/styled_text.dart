import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  String value;
  FontWeight valueFontWeight;
  double valueFontSize;
  String? label;
  FontWeight labelFontWeight;
  double labelFontSize;

  StyledText({
    super.key,
    required this.value,
    this.label,
    this.valueFontWeight = FontWeight.normal,
    this.valueFontSize = 12,
    this.labelFontWeight = FontWeight.normal,
    this.labelFontSize = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (label != null)
          Text(
            '$label',
            style: TextStyle(
              fontSize: this.labelFontSize,
              fontWeight: this.labelFontWeight,
            ),
          ),
        Text(
          '$value',
          style: TextStyle(
            fontSize: this.valueFontSize,
            fontWeight: this.valueFontWeight,
          ),
        ),
      ],
    );
  }
}
