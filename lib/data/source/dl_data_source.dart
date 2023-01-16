import 'package:dio/dio.dart';
import 'package:repo_bloc/common/validateresponse.dart';
import 'package:repo_bloc/data/entities/dl_entitie.dart';

abstract class IDlDataSource {
  Future<List<DlEntities>> getAll();
}

class DlDataSource implements IDlDataSource {
  final Dio httpclient;

  DlDataSource(this.httpclient);
  @override
  Future<List<DlEntities>> getAll() async {
    final response = await httpclient.get('AlisApi/api/dl');
    validateResponse(response);
    final dls = <DlEntities>[];
    (response.data as List).forEach((element) {
      dls.add(DlEntities.fromJson(element));
    });
    return dls;
  }
}
