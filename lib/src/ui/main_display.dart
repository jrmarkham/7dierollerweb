import 'package:firebase/firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seven_die_web/src/data/blocs/firebase/bloc.dart';
import 'package:seven_die_web/src/data/global_data.dart';
import 'package:seven_die_web/src/ui/display_pool.dart';
import 'package:seven_die_web/src/ui/five_die.dart';

class MainDisplay extends StatefulWidget {
  @override
  _MainDisplayState createState() => _MainDisplayState();
}

class _MainDisplayState extends State<MainDisplay> {
// FIREBASE BLOC CONTROLS  THE DATA ON FIREBASE
// user updates the bloc with events and the states are
// handled but the data stream
  FirebaseBloc _firebaseBloc;
  Stream _dataStream;
    bool setInit = true;
  // called once from the bloc listener to assugn the stream to the stream builder
  // which handles the flow of data (roll updates and the locks/unlock)

  void setStreamStream(Stream _ds) {
    setState(() {
      _dataStream = _ds;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firebaseBloc = BlocProvider.of<FirebaseBloc>(context);
    _firebaseBloc.dispatch(FirebaseEventInit());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: BlocListener(
                bloc: _firebaseBloc,
                listener: (BuildContext context, FirebaseState state) {

                    debugPrint('::::D7::::::: __firebaseBloc ${state.toString()}');

                  // in a more complex app we would have more to listen to
                  if (state is FirebaseStateInitResponse) {
                    setStreamStream(state.stream);
                  }
                },

                // the Stream builder updates in real time w/ the could data to run the display
                // on the animated die and locks and unlocks the button
                child: StreamBuilder<dynamic>(
                    stream: _dataStream,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Text('nodata');
                      }

                    final DocumentSnapshot ds = snapshot.data;

                      final bool _locked = ds.data()[LOCKED];
                      final int _roll = ds.data()[ROLL];
                      final List<dynamic> _pool =  ds.data()[POOL];


                      if(setInit){
                          setInit = false;
                          _firebaseBloc.dispatch(FirebaseEventSetInitVars(_locked, _pool, _roll));

                      }


                      debugPrint(':::::D7::::: got pool $_pool');

                      final Function buttonFunction = _locked
                          ? null
                          : () =>
                              _firebaseBloc.dispatch(FirebaseEventRollDie());
                      final String buttonText = _locked ? btnLocked : btnRoll;

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          DisplayPool(_pool),
                          AnimatedSwitcher(
                            duration: Duration(seconds: SECONDS),
                            switchInCurve: Curves.easeIn,
                            switchOutCurve: Curves.easeOut,
                            transitionBuilder:
                                (Widget child, Animation<double> animation) =>
                                    RotationTransition(
                              child: child,
                              turns: animation,
                            ),
                            child: FiveDie(
                              _roll,
                              key: ValueKey<int>(_roll),
                            ),
                          ),
                          RaisedButton(
                            child: Text(buttonText, style:TextStyle(fontFamily:'Roboto', color: _locked ? Colors.black12 : Colors.white)),
                            color: _locked ? Colors.white12 : Colors.green,
                            onPressed: buttonFunction,
                          )
                        ],
                      );
                    }))));
  }
}
