import 'package:repo_bloc/data/entities/dl_entitie.dart';
import 'package:repo_bloc/data/source/dl_data_source.dart';
import 'package:repo_bloc/httpClient/httpClient.dart';

final dlRepository = DlRepository(DlDataSource(httpclient));

abstract class IDlRepository {
  Future<List<DlEntities>> getAll();
}

class DlRepository implements IDlRepository {
  final IDlDataSource dataSource;

  DlRepository(this.dataSource);
  @override
  Future<List<DlEntities>> getAll() {
    return dataSource.getAll();
  }
}
