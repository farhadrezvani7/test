import 'package:dio/dio.dart';
import 'package:repo_bloc/common/validateresponse.dart';
import 'package:repo_bloc/data/entities/product_entitie.dart';

abstract class IProductDataSource {
  Future<List<ProductEntitie>> getAll(int sort);
  Future<List<ProductEntitie>> search(String searchTerm);
}

class ProductDataSource implements IProductDataSource {
  final Dio httpclient;

  ProductDataSource(this.httpclient);
  @override
  Future<List<ProductEntitie>> getAll(int sort) async {
    final response = await httpclient.get('product/list?sort=$sort');
    validateResponse(response);
    final products = <ProductEntitie>[];
    (response.data as List).forEach((element) {
      products.add(ProductEntitie.fromJson(element));
    });
    return products;
  }

  @override
  Future<List<ProductEntitie>> search(String searchTerm) async {
    final response =
        await httpclient.get('product/list?searchterm=$searchTerm');
    validateResponse(response);
    final products = <ProductEntitie>[];
    (response.data as List).forEach((element) {
      products.add(ProductEntitie.fromJson(element));
    });
    return products;
  }
}
