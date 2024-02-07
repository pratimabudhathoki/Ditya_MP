import 'dart:io';

import 'package:coffee_shop/features/upload_documents/controllers/upload_docs_controller.dart';
import 'package:coffee_shop/features/upload_documents/models/personal_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'upload_doc_event.dart';
part 'upload_doc_state.dart';
part 'upload_doc_bloc.freezed.dart';

@injectable
class UploadDocBloc extends Bloc<UploadDocEvent, UploadDocState> {
  final UploadDocsController docsController;
  UploadDocBloc(this.docsController)
      : super(UploadDocState(
            personalInfoFormKey: GlobalKey<FormState>(),
            passportFormKey: GlobalKey<FormState>())) {
    on<UploadDocEvent>((event, emit) async {
      await event.map(
        started: (event) {},
        goToNextStep: (event) => _goToNext(event, emit),
        // Personal info event to state
        fullNameChanged: (event) => _onFullNameChanged(event, emit),
        permanantAddressChanged: (event) =>
            _onPermanantAddressChanged(event, emit),
        temporaryAddressChanged: (event) =>
            _onTemporaryAddressChanged(event, emit),
        fatherNameChanged: (event) => _onFatherNameChanged(event, emit),
        dobChanged: (event) => _onDOBChanged(event, emit),
        uploadPersonalInfo: (event) async => _onUploadPersonalInfo(event, emit),

        // Photo upload event to state
        ppSizePhotoChanged: (event) => _onPPSizePhotoChanged(event, emit),
        fullSizePhotoChanged: (event) => _onFullSizePhotoChanged(event, emit),
        uploadPhotos: (event) => _onUploadPhotos(event, emit),

        // Passport upload event to state
        passportPhotoChanged: (event) => _onPassportPhotoChanged(event, emit),
        passportNumberChanged: (event) => _onPassportNumberChanged(event, emit),
        passportIssueDateChanged: (event) =>
            _onPassportIssueDateChanged(event, emit),
        uploadPassportInfo: (event) => _onUploadPassportInfo(event, emit),

        //Resume upload events to state
        resumeChanged: (event) => _onResumeChanged(event, emit),
        uploadResume: (event) => _onUploadResume(event, emit),
      );
    });
  }
  _goToNext(_GoToNextStep event, Emitter<UploadDocState> emit) {
    emit(state.copyWith(step: state.step + 1));
  }

//Personal Info event to state
  _onFullNameChanged(_FullNameChanged event, Emitter<UploadDocState> emit) =>
      emit(state.copyWith(fullName: event.fullName));

  _onPermanantAddressChanged(
          _PermanantAddressChanged event, Emitter<UploadDocState> emit) =>
      emit(state.copyWith(permanantAddress: event.permAddress));

  _onTemporaryAddressChanged(
          _TemporaryAddressChanged event, Emitter<UploadDocState> emit) =>
      emit(state.copyWith(temporaryAddress: event.tempAddress));

  _onFatherNameChanged(
          _FatherNameChanged event, Emitter<UploadDocState> emit) =>
      emit(state.copyWith(fatherName: event.fatherName));

  _onDOBChanged(_DOBChanged event, Emitter<UploadDocState> emit) =>
      emit(state.copyWith(birthDate: event.dob));

  _onUploadPersonalInfo(
      _UploadPersonalInfo event, Emitter<UploadDocState> emit) async {
    emit(state.copyWith(uploadStatus: UploadStatus.uploading));
    if (state.personalInfoFormKey.currentState!.validate()) {
      print("all fields valid");
      final PersonalInfo personalInfo = PersonalInfo(
          fullName: state.fatherName!,
          permanentAddress: state.permanantAddress!,
          temporaryAddress: state.temporaryAddress!,
          fatherName: state.fatherName!,
          dob: state.birthDate!,
          height: state.height,
          weight: state.weight);
      final failureOrSuccess =
          await docsController.uploadPersonalInfo(personalInfo);
      failureOrSuccess.fold(
          (l) => emit(state.copyWith(uploadStatus: UploadStatus.uploadFailure)),
          (r) => emit(
              state.copyWith(uploadStatus: UploadStatus.uploaded, step: 1)));
    }
  }

  // Upload photo event to state.
  _onPPSizePhotoChanged(
          _PPSizePhotoChanged event, Emitter<UploadDocState> emit) =>
      emit(state.copyWith(ppSizePhoto: event.photo));
  _onFullSizePhotoChanged(
          _FullSizePhotoChanged event, Emitter<UploadDocState> emit) =>
      emit(state.copyWith(fullSizePhoto: event.photo));
  _onUploadPhotos(_UploadPhotos event, Emitter<UploadDocState> emit) async {
    if (state.fullSizePhoto == null || state.ppSizePhoto == null) {
      emit(state.copyWith(
          hasValidationError: true,
          validationError: "Please choose required photos"));
    } else {
      emit(state.copyWith(
        hasValidationError: false,
        validationError: null,
        uploadStatus: UploadStatus.uploading,
      ));
      final failureOrSuccess = await docsController.uploadPhotos(
          state.ppSizePhoto!, state.fullSizePhoto!);
      failureOrSuccess.fold(
          (l) => emit(state.copyWith(uploadStatus: UploadStatus.uploadFailure)),
          (r) => emit(state.copyWith(
              uploadStatus: UploadStatus.uploaded, step: state.step + 1)));
    }
  }

  // Upload passport event to state
  _onPassportPhotoChanged(
          _PassportPhotoChanged event, Emitter<UploadDocState> emit) =>
      emit(state.copyWith(passportPhoto: event.photo));

  _onPassportNumberChanged(
          _PassportNumberChanged event, Emitter<UploadDocState> emit) =>
      emit(state.copyWith(passportNumber: event.passportNumber));

  _onPassportIssueDateChanged(
          _PassportIssueDateChanged event, Emitter<UploadDocState> emit) =>
      emit(state.copyWith(issueDate: event.issueDate));

  _onUploadPassportInfo(
      _UploadPassportInfo event, Emitter<UploadDocState> emit) async {
    if (state.passportFormKey.currentState!.validate()) {
      if (state.passportPhoto == null) {
        emit(state.copyWith(
            hasValidationError: true,
            validationError: "Please choose passport photo"));
      } else {
        emit(state.copyWith(
            hasValidationError: false,
            validationError: null,
            uploadStatus: UploadStatus.uploading));
        final failureOrSuccess = await docsController.uploadPassportInfo(
            state.passportPhoto!, state.passportNumber!, state.issueDate!);
        failureOrSuccess.fold(
            (l) =>
                emit(state.copyWith(uploadStatus: UploadStatus.uploadFailure)),
            (r) => emit(state.copyWith(
                uploadStatus: UploadStatus.uploaded, step: state.step + 1)));
      }
    }
  }

  _onResumeChanged(_ResumeChanged event, Emitter<UploadDocState> emit) =>
      emit(state.copyWith(resume: event.resume));

  _onUploadResume(_UploadResume event, Emitter<UploadDocState> emit) async {
    if (state.resume == null) {
      emit(state.copyWith(
          hasValidationError: true,
          validationError: "Please choose recently updated resume"));
    } else {
      emit(state.copyWith(
          hasValidationError: false,
          validationError: null,
          uploadStatus: UploadStatus.uploading));
      final failureOrSuccess = await docsController.uploadResume(state.resume!);
      failureOrSuccess.fold(
          (l) => emit(state.copyWith(uploadStatus: UploadStatus.uploadFailure)),
          (r) => emit(state.copyWith(uploadStatus: UploadStatus.uploaded,step:state.step+1)));
    }
  }
}
