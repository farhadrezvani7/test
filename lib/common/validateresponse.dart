import 'package:dio/dio.dart';
import 'package:repo_bloc/common/exception.dart';

validateResponse(Response response) {
  if (response.statusCode != 200) {
    throw AppException();
  }
}
