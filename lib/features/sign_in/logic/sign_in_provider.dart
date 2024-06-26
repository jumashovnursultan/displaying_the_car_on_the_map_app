import 'package:nursultan_app/data/storage/local_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/model/api_reponse.dart';
import '../../../../data/model/token.dart';
import '../../../providers/dependencies.dart';

part 'sign_in_provider.g.dart';

@riverpod
class SignIn extends _$SignIn {
  @override
  FutureOr<ApiResponse<Token>> build() async {
    return ApiResponse();
  }

  Future<void> signIn(String login, String password) async {
    state = const AsyncLoading();
    final response = await ref.watch(userRepoProvider).login(login, password);
    if (response.isSuccessful && response.result != null) {
      LocalStorage().token = Token(
          access: response.result!.access, refresh: response.result!.refresh);
      state = AsyncData(response);
    } else {
      state = AsyncError(response.errorData, StackTrace.current);
    }
  }
}
