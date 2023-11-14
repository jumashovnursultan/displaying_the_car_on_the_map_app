import 'package:nursultan_app/data/model/create_driver_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/model/api_reponse.dart';
import '../../../providers/common.dart';

part 'create_driver_alert_dialog.g.dart';
part 'create_driver_alert_dialog.freezed.dart';

enum CreateDriverStatus {
  pure,
  loading,
  success,
  error;

  bool get isPure => this == pure;
  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isError => this == error;
}

@freezed
class CreateDriverState with _$CreateDriverState {
  const factory CreateDriverState({
    required CreateDriverStatus status,
  }) = _CreateDriverState;

  factory CreateDriverState.initial() => const CreateDriverState(
        status: CreateDriverStatus.pure,
      );
}

@riverpod
class CreateDriver extends _$CreateDriver {
  @override
  CreateDriverState build() {
    return CreateDriverState.initial();
  }

  Future<ApiResponse> createDriver(CreateDriverModel model) async {
    final response = await ref.read(userRepoProvider).createDriver(model);
    print(response.statusCode);

    return response;
  }
}
