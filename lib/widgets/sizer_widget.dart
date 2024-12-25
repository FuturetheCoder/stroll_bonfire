
import 'package:flutter/material.dart';
import 'package:stroll_bonfire/utils/utils.dart';

class AppSizer extends StatelessWidget {
  final Widget child;
  const AppSizer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext context, Orientation orientation,
        DeviceType deviceType) => child);
  }
}
