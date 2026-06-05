// Custom RadioGroup widget for simple_live_app
// Compatible with flutter_smart_dialog's RadioGroup usage pattern
import 'package:flutter/material.dart';

// InheritedWidget to pass Radio state to children
class _RadioGroupInherited<T> extends InheritedWidget {
  final T? groupValue;
  final ValueChanged<T?>? onChanged;

  const _RadioGroupInherited({
    required this.groupValue,
    required this.onChanged,
    required super.child,
  });

  static _RadioGroupInherited<T>? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_RadioGroupInherited<T>>();
  }

  @override
  bool updateShouldNotify(_RadioGroupInherited<T> old) {
    return groupValue != old.groupValue || onChanged != old.onChanged;
  }
}

/// A RadioGroup widget that provides group state to RadioListTile children
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
    return _RadioGroupInherited<T>(
      groupValue: groupValue,
      onChanged: onChanged,
      child: child,
    );
  }
}

/// Helper to get RadioGroup context
class RadioGroupContext {
  static T? getGroupValue<T>(BuildContext context) {
    return _RadioGroupInherited<T>.of(context)?.groupValue;
  }

  static ValueChanged<T?>? getOnChanged<T>(BuildContext context) {
    return _RadioGroupInherited<T>.of(context)?.onChanged;
  }
}
