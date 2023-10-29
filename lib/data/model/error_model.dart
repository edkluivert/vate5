class ErrorModel {
  final Errors? errors;

  ErrorModel({
    this.errors,
  });

  ErrorModel.fromJson(Map<String, dynamic> json)
      : errors = (json['errors'] as Map<String,dynamic>?) != null ? Errors.fromJson(json['errors'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'errors' : errors?.toJson()
  };
}

class Errors {
  final String? username;

  Errors({
    this.username,
  });

  Errors.fromJson(Map<String, dynamic> json)
      : username = json['username'] as String?;

  Map<String, dynamic> toJson() => {
    'username' : username
  };
}