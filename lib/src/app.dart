import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seven_die_web/src/ui/main_display.dart';

import 'data/blocs/firebase/bloc.dart';
 // import 'package:seven_die_web/src/data/global_data.dart';

class WebApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Web'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
     //   initDevice(context);
    return MultiBlocProvider(
        providers: [
          BlocProvider<FirebaseBloc>(builder: (BuildContext context) => FirebaseBloc()),

        ],
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.green,
              title: Text('5 of 7 DIE ROLLER', style:TextStyle(fontFamily:'Roboto', color: Colors.white)),
              ),
            body:  MainDisplay()));
  }
}
