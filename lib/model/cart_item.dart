import 'package:flutter/material.dart';

class CartItem {
  String name;
  bool checked;

  CartItem({
    @required this.name,
    @required this.checked,
  });

  @override
  String toString() {
    return "$name : $checked";
  }
}
