import 'package:equatable/equatable.dart';

abstract class FirebaseEvent extends Equatable {
  const FirebaseEvent([List props = const <dynamic>[]]);

  @override
  List<Object> get props => [props];
}

class FirebaseEventInit extends FirebaseEvent {}
class FirebaseEventSetInitVars extends FirebaseEvent {
  final bool lock;
  final List<dynamic> pool;
  final int roll;
  FirebaseEventSetInitVars(this.lock, this.pool, this.roll);

  @override
  List<Object> get props =>[lock,pool,roll];
}
class FirebaseEventRollDie extends FirebaseEvent {}
class FirebaseEventUnlock extends FirebaseEvent {}
class FirebaseEventCheckLock extends FirebaseEvent {}