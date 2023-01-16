import 'package:dio/dio.dart';
import 'package:repo_bloc/common/validateresponse.dart';
import 'package:repo_bloc/data/entities/dlref_entitie.dart';

abstract class IDlRefDataSource {
  Future<List<DlRefEntities>> getAll(String companyref, String phonenumber);
}

class DlRefDataSource implements IDlRefDataSource {
  final Dio httpclient;

  DlRefDataSource(this.httpclient);
  @override
  Future<List<DlRefEntities>> getAll(
      String companyref, String phonenumber) async {
    final response = await httpclient.get('dl', queryParameters: {
      "companyref": companyref,
      "phonenumber": phonenumber,
    });
    validateResponse(response);
    final dlrefs = <DlRefEntities>[];
    (response.data as List).forEach((element) {
      dlrefs.add(DlRefEntities.fromJson(element));
    });
    return dlrefs;
  }
}
