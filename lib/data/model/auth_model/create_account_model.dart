class CreateAccountModel {
  final String? message;
  final String? token;
  final String? email;
  final String? username;
  final String? fullName;
  final String? phoneNumber;

  CreateAccountModel({
    this.message,
    this.token,
    this.email,
    this.username,
    this.fullName,
    this.phoneNumber,
  });

  CreateAccountModel.fromJson(Map<String, dynamic> json)
      : message = json['message'] as String?,
        token = json['token'] as String?,
        email = json['email'] as String?,
        username = json['username'] as String?,
        fullName = json['fullName'] as String?,
        phoneNumber = json['phoneNumber'] as String?;

  Map<String, dynamic> toJson() => {
    'message' : message,
    'token' : token,
    'email' : email,
    'username' : username,
    'fullName' : fullName,
    'phoneNumber' : phoneNumber
  };
}