abstract class APIUrls{
  static const baseUrl = 'https://cms.arrtravelandtour.com.np';

  static const signup =  '$baseUrl/api/v1/auth/register';
  static const verifyOTP =  '$baseUrl/api/v1/auth/user/verify';
  static const login =  '$baseUrl/api/v1/auth/login';

  // upload doc

  static const uploadPersonalInfo = "$baseUrl/api/v1/personal/info";
  static const uploadPhotos = "$baseUrl/api/v1/upload/photo";
  static const uploadPassportInfo = "$baseUrl/api/v1/passport/info";
  static const uploadResume = "$baseUrl/api/v1/resume/info";
}