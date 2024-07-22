import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys{Key}

class SharedManager{
    SharedPreferences? prefs;
    SharedManager(){
      init();
    }
    Future<void> init () async {
      prefs = await SharedPreferences.getInstance();
    }
  void _checkPrefs(){
    if (prefs==null) {
      throw('Preferences is null...');
    }
  }
  Future<void> saveString (SharedKeys Key,String value)async {
    _checkPrefs;
    await prefs?.setString(Key.name, value);
  }
  getSring(SharedKeys Key){
    _checkPrefs;
    return prefs?.getString(Key.name);
  }
  Future<bool> removeItem(SharedKeys Key)async{
    _checkPrefs;
    return ( await prefs?.remove(Key.name)) ?? false;
  }
}