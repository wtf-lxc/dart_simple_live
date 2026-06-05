// Custom RadioGroup widget for simple_live_app
import 'package:flutter/material.dart';

/// A custom RadioGroup widget that manages radio button group state
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
    return _RadioGroupProvider<T>(
      groupValue: groupValue,
      onChanged: onChanged,
      child: child,
    );
  }
}

class _RadioGroupProvider<T> extends InheritedWidget {
  final T? groupValue;
  final ValueChanged<T?>? onChanged;

  const _RadioGroupProvider({
    required this.groupValue,
    required this.onChanged,
    required super.child,
  });

  static _RadioGroupProvider<T>? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_RadioGroupProvider<T>>();
  }

  @override
  bool updateShouldNotify(_RadioGroupProvider<T> old) {
    return groupValue != old.groupValue || onChanged != old.onChanged;
  }
}

/// Extension to help RadioListTile work with RadioGroup
extension RadioGroupExtensions<T> on RadioListTile<T> {
  RadioListTile<T> withGroupValue(T? groupValue, ValueChanged<T?>? onChanged) {
    return RadioListTile<T>(
      key: key,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      title: title,
      subtitle: subtitle,
      isThreeLine: isThreeLine,
      dense: dense,
      visualDensity: visualDensity,
      shape: shape,
      tileColor: tileColor,
      selectedTileColor: selectedTileColor,
      controlAffinity: controlAffinity,
      autofocus: autofocus,
    );
  }
}
