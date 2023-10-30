import 'package:get_it/get_it.dart';
import 'package:nursultan_app/config/constants.dart';
import 'package:nursultan_app/data/storage/local_storage.dart';

import '../data/client/client.dart';
import '../data/repositories/user_repo.dart';

final getIt = GetIt.instance;

void registerDependencies() {
  final client = ApiClient(Const.baseUrl, storage: LocalStorage());
  getIt.registerLazySingleton<UserRepo>(() => UserAPIRepo(client: client));
}
