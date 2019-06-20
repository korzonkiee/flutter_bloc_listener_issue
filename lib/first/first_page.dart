import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_listener/first/bloc/bloc.dart';
import 'package:flutter_bloc_listener/second/second_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key key}) : super(key: key);

  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final FirstBloc bloc = FirstBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener(
        bloc: bloc,
        listener: (BuildContext context, FirstState state) {
          print("Handling state change...");
          if (state is ButtonClicked) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (c) => SecondPage()));
          }
        },
        child: Center(
          child: RaisedButton(
              child: Text("Second page"),
              onPressed: () {
                bloc.dispatch(ButtonClick());
              }),
        ),
      ),
    );
  }
}
