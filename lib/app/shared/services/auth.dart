/* import 'package:firebase_auth/firebase_auth.dart';
import 'package:hubo_education/app/app_module.dart';
import 'package:hubo_education/app/modules/initial/models/user_model.dart';
import 'package:hubo_education/app/shared/services/storage.dart';

class Auth {
  final auth = FirebaseAuth.instance;
  final storage = AppModule.to.get<Storage>();
  FirebaseUser user;
  // static Auth _instance;

  // factory Auth() {
  //   _instance ??= Auth._internalConstructor();
  //   return _instance;
  // }
  // Auth._internalConstructor();

  Future<Null> signin(UserModel data) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: data.email,
        password: data.password,
      );
      FirebaseUser authUser = await auth.currentUser();
      await storage.saveUser(authUser);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> currentUser() async {
    try {
      if (auth != null) {
        if (user == null) {
          user = await auth.currentUser();
          if (user != null) {
            storage.changeLogged(true);

            /// AppModule.to.getBloc<AppBloc>().login();
          } else {
            storage.changeLogged(false);

            /// AppModule.to.getBloc<AppBloc>().logout();
          }
        }
      }
    } catch (e) {
      throw e;
    }
  }

  Future<String> getJWT() async {
    try {
      if (user == null) await currentUser();
      var id = await user.getIdToken(refresh: true);
      return "Bearer " + id.token;
    } catch (e) {
      throw e;
    }
  }

  Future logoutUser() async {
    FirebaseAuth.instance.signOut();
    storage.clear();

    ///AppModule.to.getBloc<AppBloc>().logout();
  }
}
 */