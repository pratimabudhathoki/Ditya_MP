part of 'upload_doc_bloc.dart';

@freezed
class UploadDocState with _$UploadDocState {
  const factory UploadDocState({
    @Default(0) int step,
    @Default(UploadStatus.initial) UploadStatus uploadStatus,

    // Personal Information Form contents
    required GlobalKey<FormState> personalInfoFormKey,
    String? fullName,
    String? permanantAddress,
    String? temporaryAddress,
    String? fatherName,
    String? birthDate,
    @Default(5.6) double height,
    @Default(69.0) double weight,

    
  }) = _UploadDocState;
}

enum UploadStatus {
  initial,
  uploading,
  uploaded,
  uploadFailure,
}
