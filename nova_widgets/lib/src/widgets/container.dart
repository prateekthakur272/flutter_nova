import 'dart:developer';
import 'package:flutter/material.dart' as mt;
import 'package:nova_widgets/nova_widgets.dart';

class NovaContainer extends NovaWidgetBaseModel {
  final Json? child;
  final String? color;
  NovaContainer({this.color, this.child});

  @override
  Json toJson() {
    return {
      'child': child,
      'color': color
    };
  }

  static NovaContainer fromJson(Json data) {
    return NovaContainer(child: data['child'], );
  }

  mt.Widget render() {
    log(toJson().toString());
    final _child = Renderer.render(child??{});
    return mt.Container(child: _child,);
  }
}