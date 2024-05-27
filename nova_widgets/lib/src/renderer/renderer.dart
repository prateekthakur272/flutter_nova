import 'package:flutter/material.dart';
import 'package:nova_widgets/src/core/type_defs.dart';
import 'package:nova_widgets/src/widgets/container.dart';
import 'package:nova_widgets/src/widgets/scaffold.dart';
import 'package:nova_widgets/src/widgets/text.dart';

class Renderer {
  const Renderer._();

  static Widget render(Json data) {
    final root = data.entries.first.key;
    if (root == 'Scaffold') {
      return NovaScaffold.fromJson(data[root]).render();
    }else if(root == 'Text'){
      return NovaText.fromJson(data[root]).render();
    }else if(root == 'Container'){
      return NovaContainer.fromJson(data[root]).render();
    }
    return const Placeholder();
  }
}
