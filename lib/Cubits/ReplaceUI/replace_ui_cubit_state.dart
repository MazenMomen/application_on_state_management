part of 'replace_ui_cubit_cubit.dart';

@immutable
sealed class ReplaceUiState {}

final class ReplaceUiInitial extends ReplaceUiState {}

final class ShowText extends ReplaceUiState {}

final class ShowImage extends ReplaceUiState {}

final class ShowSquare extends ReplaceUiState {}
