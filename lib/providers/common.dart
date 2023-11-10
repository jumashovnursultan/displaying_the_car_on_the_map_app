import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nursultan_app/config/constants.dart';
import 'package:nursultan_app/data/client/client.dart';
import 'package:nursultan_app/data/repositories/user_repo.dart';

import '../data/storage/local_storage.dart';

final localStorageProvider = Provider(
  (ref) => LocalStorage(),
);

final dioProvider = Provider(
  (ref) => Dio(BaseOptions(baseUrl: Const.baseUrl)),
);

final apiClientProvider = Provider(
  (ref) => ApiClient(
    Const.baseUrl,
    storage: ref.read(localStorageProvider),
  ),
);

final userRepoProvider = Provider<UserRepo>((ref) {
  return UserAPIRepo(client: ref.watch(apiClientProvider));
});
