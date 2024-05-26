import 'dart:developer';
import 'package:flutter/material.dart' as mt;
import 'package:nova_widgets/nova_widgets.dart';

class NovaText extends NovaWidgetBaseModel {
  final String text;
  NovaText({required this.text});

  @override
  Json toJson() {
    return {
      'text':text,
    };
  }

  static NovaText fromJson(Json data) {
    return NovaText(text: data['text']);
  }

  mt.Widget render() {
    log(toJson().toString());
    return mt.Text(text);
  }
}