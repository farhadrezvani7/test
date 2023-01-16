import 'package:repo_bloc/data/entities/product_entitie.dart';
import 'package:repo_bloc/data/source/product_data_source.dart';
import 'package:repo_bloc/httpClient/httpClient.dart';

final productRepository = ProductRepository(ProductDataSource(httpclient));

abstract class IProductRepository {
  Future<List<ProductEntitie>> getAll(int sort);
  Future<List<ProductEntitie>> search(String searchTerm);
}

class ProductRepository implements IProductRepository {
  final IProductDataSource dataSource;

  ProductRepository(this.dataSource);
  @override
  Future<List<ProductEntitie>> getAll(int sort) {
    return dataSource.getAll(sort);
  }

  @override
  Future<List<ProductEntitie>> search(String searchTerm) {
    return dataSource.search(searchTerm);
  }
}
