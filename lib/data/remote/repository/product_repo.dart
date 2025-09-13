import 'package:ecomm_395/data/remote/helper/api_helper.dart';
import 'package:ecomm_395/domain/constants/app_urls.dart';

class ProductRepo {
  ApiHelper apiHelper;

  ProductRepo({required this.apiHelper});

  Future<dynamic> fetchProducts() async {
    try {
      return await apiHelper.postApi(url: AppUrls.fetchProductUrl);
    } catch (e) {
      rethrow;
    }
  }
}
