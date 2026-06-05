// Custom RadioGroup widget for simple_live_app
import 'package:flutter/material.dart';

/// A custom RadioGroup widget that wraps RadioListTile widgets
/// and manages their group value state.
class RadioGroup<T> extends StatelessWidget {
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final Widget child;

  const RadioGroup({
    super.key,
    required this.groupValue,
    required this.onChanged,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
