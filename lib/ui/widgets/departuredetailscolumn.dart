import 'package:flutter/material.dart';

class DepartureDetailColumn extends StatelessWidget {
  final Color textColor;
  const DepartureDetailColumn({
    Key key,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "06 OCT, 13:57",
          style: Theme.of(context)
              .textTheme
              .subhead
              .apply(color: textColor ?? Colors.white),
        ),
        Text(
          "ORT",
          style: Theme.of(context)
              .textTheme
              .title
              .apply(color: textColor ?? Colors.white, fontWeightDelta: 2),
        ),
        Text(
          "OR Tambo",
          style: Theme.of(context)
              .textTheme
              .subhead
              .apply(color: textColor ?? Colors.white),
        ),
      ],
    );
  }
}
