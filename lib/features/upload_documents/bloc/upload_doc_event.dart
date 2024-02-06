part of 'upload_doc_bloc.dart';

@freezed
class UploadDocEvent with _$UploadDocEvent {
  const factory UploadDocEvent.started() = _Started;
  const factory UploadDocEvent.goToNextStep()  = _GoToNextStep;
  
  //Personal info events
  const factory UploadDocEvent.fullNameChanged(String fullName)=_FullNameChanged;
  const factory UploadDocEvent.temporaryAddressChanged(String tempAddress)=_TemporaryAddressChanged;
  const factory UploadDocEvent.permanantAddressChanged(String permAddress)=_PermanantAddressChanged;
  const factory UploadDocEvent.fatherNameChanged(String fatherName)=_FatherNameChanged;
  const factory UploadDocEvent.dobChanged(String dob)=_DOBChanged;
  const factory UploadDocEvent.uploadPersonalInfo()=_UploadPersonalInfo;

  // Photo upload events
  const factory UploadDocEvent.ppSizePhotoChanged(dynamic photo)=_PPSizePhotoChanged;
  const factory UploadDocEvent.fullSizePhotoChanged(dynamic photo)=_FullSizePhotoChanged;
  
  
}