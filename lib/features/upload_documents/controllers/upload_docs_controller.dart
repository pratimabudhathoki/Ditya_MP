import 'package:coffee_shop/core/network/network.dart';
import 'package:coffee_shop/features/upload_documents/models/personal_info.dart';
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
}
