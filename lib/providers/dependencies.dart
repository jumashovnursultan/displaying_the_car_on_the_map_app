import 'package:nursultan_app/data/storage/local_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/constants.dart';
import '../data/client/client.dart';
import '../data/repositories/user_repo.dart';

final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient(Const.baseUrl, storage: LocalStorage());
});

final userRepoProvider = Provider<UserRepo>((ref) {
  return UserAPIRepo(client: ref.read(apiClientProvider));
});
