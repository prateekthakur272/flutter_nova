import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:nova_widgets/nova_widgets.dart';

class NovaScaffold extends NovaWidgetBaseModel {
  final String? title;
  final Json? body;
  NovaScaffold({this.body, this.title});
  @override
  Json toJson() {
    return {
      'title':title,
      'body':body
    };
  }

  static NovaScaffold fromJson(Json data) {
    return NovaScaffold(title: data['title'], body: data['body']);
  }

  Widget render() {
    log(toJson().toString());
    final _body = Renderer.render(body??{});
    return Scaffold(
      appBar: AppBar(
        title: Text(title??'None'),
      ),
      body: _body,
    );
  }

  String code(){
    return '''final _body = Renderer.render(body??{});
    return Scaffold(
      appBar: AppBar(
        title: Text(title??'None'),
      ),
      body: _body,
    );''';
  }
}