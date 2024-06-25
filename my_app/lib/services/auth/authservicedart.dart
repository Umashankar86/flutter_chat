import 'package:firebase_auth/firebase-auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = Firebase.instance;

Future<UserCredential> signInWithEmailandPassword(String email,String password) async{

try{
  UserCredential userCredential =await _firebaseAuth.signInWithEmailandPassword(email:email,password:password)


return userCredential;

} on FirebaseAuthException catch(e){
  throw Exception(e.code);
}


}



}



