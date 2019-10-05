import 'package:equatable/equatable.dart';

abstract class FirebaseEvent extends Equatable {
  FirebaseEvent([List props = const []]):super(props);
}

class FirebaseEventInit extends FirebaseEvent {}
class FirebaseEventSetInitVars extends FirebaseEvent {
  final bool lock;
  final List<dynamic> pool;
  final int roll;
  FirebaseEventSetInitVars(this.lock, this.pool, this.roll):super([lock,pool,roll]);
}
class FirebaseEventRollDie extends FirebaseEvent {}
