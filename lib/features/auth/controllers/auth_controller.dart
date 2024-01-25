import "package:coffee_shop/core/network/network.dart";
import "package:dio/dio.dart";
import "package:fpdart/fpdart.dart";
import "package:injectable/injectable.dart";

@LazySingleton()
class AuthController {
  final Dio _dio;
  AuthController({required Dio dio}) : _dio = dio;
  Future<Either<String, bool>> signup(
      {required String mobileNo, password, confirmPassword}) async {
    try {
      final response =
          await _dio.post(ApiUrls.signup, options: Options(), data: {
        "mobile_no": mobileNo,
        "password": password,
        "password_confirmation": confirmPassword,
      });
      print(response);
      return right(true);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, bool>> verifyOTP({required String otpCode}) async {
    try {
      final response =
          await _dio.post(ApiUrls.verifyOTP, options: Options(), data: {
        "code": otpCode,
      });
      print(response);
      return right(true);
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, bool>> login(
      {required String mobileNo, password}) async {
    try {
      final response = await _dio.post(ApiUrls.login,
      data:{
        "mobile_no":mobileNo,
        "password":password
      }
      );
      print(response);
      return right(true);
    } catch (e) {
      return left(e.toString());
    }
  }
}
