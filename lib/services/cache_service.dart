import 'package:cache/cache.dart';
import 'package:tw_core/models/full_user.dart';

class CacheService {
  final CacheClient cacheClient = CacheClient();

  static final String userKey = 'user_key';

  writeUser<T>(FullUser<T> user) {
    cacheClient.write(key: userKey, value: user);
  }

  FullUser<T> currentUser<T>() {
    return cacheClient.read(key: userKey) as FullUser<T>;
  }
}
