import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/models/module.dart';

part 'module_state.freezed.dart';

@freezed
class ModuleState with _$ModuleState {
  factory ModuleState({
    @Default(false) bool isLoading,
    @Default(false) bool isRefreshing,
    @Default([]) List<Module> modules,
  }) = _ModuleState;

  ModuleState._();
}
