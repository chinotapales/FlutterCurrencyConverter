class ApiError {
  final String error;

  ApiError.fromJson(Map<String, dynamic> json):
    error = json['error'];

  Map<String, dynamic> toJson() => {
    'error': error,
  };
}