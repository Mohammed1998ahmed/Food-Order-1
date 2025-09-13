import 'package:flutter/widgets.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNameAndRemoveUntil(String routeName,
      {Object? arguments}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
        routeName, (route) => false,
        arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}
