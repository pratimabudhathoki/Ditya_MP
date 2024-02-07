import 'dart:io';

import 'package:coffee_shop/core/network/network.dart';
import 'package:coffee_shop/features/upload_documents/models/personal_info.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class UploadDocsController {
  final NetworkClient _client;

  UploadDocsController({required NetworkClient client}) : _client = client;
  Future<Either<String, bool>> uploadPersonalInfo(
      PersonalInfo personalInfo) async {
    try {
      final response = await _client.post(
        url: APIUrls.uploadPersonalInfo,
        data: personalInfo.toJson(),
      );
      return right(true);
    } catch (e) {
      return left("error");
    }
  }

  Future<Either<String, bool>> uploadPhotos(
      File ppSizePhoto, fullSizePhoto) async {
    try {
      final map = {
        "passport_photo": await MultipartFile.fromFile(ppSizePhoto.path),
        "full_photo": await MultipartFile.fromFile(fullSizePhoto.path)
      };
      final response =
          await _client.uploadFormData(url: APIUrls.uploadPhotos, map: map);
      print(response);
      return right(true);
    } catch (e) {
      return left("error");
    }
  }

  Future<Either<String, bool>> uploadPassportInfo(
      File passportPhoto, String passportNumber, String issueDate) async {
    try {
      final map = {
        "passport_image": await MultipartFile.fromFile(passportPhoto.path),
        "passport_number": passportNumber,
        "passport_issue_date": issueDate,
      };
      final response = await _client.uploadFormData(
          url: APIUrls.uploadPassportInfo, map: map);
      print(response);
      return right(true);
    } catch (e) {
      return left("error");
    }
  }

  Future<Either<String, bool>> uploadResume(File resume) async {
    try {
      final map = {"resume_file": await MultipartFile.fromFile(resume.path)};
      final response = await _client.uploadFormData(
          url: APIUrls.uploadResume, map: map);
      print(response);
      return right(true);
    } catch (e) {
      return left("error");
    }
  }
}
