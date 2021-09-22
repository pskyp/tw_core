import 'package:cache/cache.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/developer/developer.dart';
import 'package:tw_core/models/full_user.dart';
import 'package:tw_core/models/subbie/subbie_model.dart';

class CacheService {
  static CacheClient _cacheClient = CacheClient();

  static final String userKey = 'user_key';

  writeUser<T>(FullUser<T> user) {
    _cacheClient.write(key: userKey, value: user);
  }

  FullUser<T> currentUser<T>() {
    return _cacheClient.read(key: userKey) as FullUser<T>;
  }

  Contractor get contractor => currentUser<Contractor>().user;
  Subbie get subbie => currentUser<Subbie>().user;
  Developer get developer => currentUser<Developer>().user;
}
