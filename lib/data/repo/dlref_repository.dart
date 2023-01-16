import 'package:repo_bloc/data/entities/dlref_entitie.dart';
import 'package:repo_bloc/data/source/dlref_data_source.dart';
import 'package:repo_bloc/httpClient/httpClient.dart';

final dlrefrepository = DlRefRepository(DlRefDataSource(httpclient));

abstract class IDlRefRepository {
  Future<List<DlRefEntities>> getAll(String companyref, String phonenumber);
}

class DlRefRepository implements IDlRefRepository {
  final IDlRefDataSource dataSource;

  DlRefRepository(this.dataSource);
  @override
  Future<List<DlRefEntities>> getAll(String companyref, String phonenumber) {
    return dataSource.getAll(companyref, phonenumber);
  }
}
