
// Firebase Roast Firestore
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase/firestore.dart' as fs;

const String SEVEN_DIE_COLLECTION = 'dieroller';
const String SEVEN_DIE_DOCUMENT = 'main';
const String LOCKED = 'locked';
const String ROLL = 'roll';
const String POOL = 'pool';

abstract class BaseFirebaseService {
    Stream getStream();
    setInits(bool _lock, List<dynamic> _pool, int _roll);
    Future<void> setLock(bool _lock);
    Future<void> setPool(List<dynamic> _pool);
    Future<void> setRoll(int _roll);
}

class FirebaseService extends BaseFirebaseService {
    static final FirebaseService _instance = FirebaseService.internal();

    factory FirebaseService() => _instance;
    FirebaseService.internal();

    List<dynamic> savedPool;
    bool savedLocked;
    int savedRoll;

    //fs.Firestore store = firestore();
    final fs.CollectionReference _firestore = firestore().collection(SEVEN_DIE_COLLECTION);


    getStream() => _firestore.doc(SEVEN_DIE_DOCUMENT).onSnapshot;

    // SET INITS

    setInits(bool _lock, List<dynamic> _pool, int _roll){
        savedPool = _pool;
        savedRoll = _roll;
        savedLocked = _lock;
    }


// SET LOCK
  Future<void> setLock(bool _lock) async {
      savedLocked = _lock;
     await _firestore.doc(SEVEN_DIE_DOCUMENT).set({LOCKED:savedLocked, ROLL: savedRoll, POOL:savedPool});
     return;
  }

    Future<void> setPool(List<dynamic> _pool) async {
        savedPool = _pool;
      return  await _firestore.doc(SEVEN_DIE_DOCUMENT).set({LOCKED:savedLocked, ROLL: savedRoll, POOL:savedPool});
    }
  
// SET ROLL
    Future<void> setRoll(int _roll) async {
      savedRoll = _roll;
       await _firestore.doc(SEVEN_DIE_DOCUMENT).set({LOCKED:savedLocked, ROLL: savedRoll, POOL:savedPool});
        return;
    }

}