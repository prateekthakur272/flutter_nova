import 'package:flutter/material.dart';
import 'package:nova_widgets/nova_widgets.dart' as nova;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: nova.Renderer.render({
        'Scaffold': {
          'appBarColor': 0x000000,
          'title': 'This is Title',
          'body': {
            'Container':{
              'child' : {'Text': {
                'text':'This is text'
                }
              }
            }
          }
        }
      }),
    );
  }
}

final scaffoldJson = {
  'Scaffold': {
    'title': 'H E L L O',
    'body': {'Text': {
      'text':'This is text'
    }}
  }
};

final textJson = {
  'Text': {
    'text':'Hello'
  }
};