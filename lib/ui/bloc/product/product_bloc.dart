import 'package:ecomm_395/data/remote/model/product_model.dart';
import 'package:ecomm_395/data/remote/repository/product_repo.dart';
import 'package:ecomm_395/ui/bloc/product/product_event.dart';
import 'package:ecomm_395/ui/bloc/product/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductRepo productRepo;

  ProductBloc({required this.productRepo}) : super(ProductInitialState()) {
    on<FetchProductEvent>((event, emit) async {
      emit(ProductLoadingState());

      try {
        dynamic res = await productRepo.fetchProducts();
        if (res["status"]) {
          List<ProductModel> mProducts =
              ProductDataModel.fromJson(res).data ?? [];
          emit(ProductLoadedState(mProductList: mProducts));
        } else {
          emit(ProductErrorState(errorMsg: res["message"]));
        }
      } catch (e) {
        emit(ProductErrorState(errorMsg: e.toString()));
      }
    });
  }
}
