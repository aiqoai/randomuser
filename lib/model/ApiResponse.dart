import 'package:user/model/user.dart';

class ApiResponse {
  final List<User> results;
  final String error;

  ApiResponse(this.results, this.error);

  ApiResponse.fromJson(Map<String, dynamic> json)
      : results =
            (json["results"] as List).map((i) => new User.fromJson(i)).toList(),
        error = "";

  ApiResponse.withError(String errorValue)
      : results = List(),
        error = errorValue;
}
