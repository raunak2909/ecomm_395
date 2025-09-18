import 'package:ecomm_395/data/remote/model/cart_model.dart';

abstract class CartState{}

class CartInitialState extends CartState{}
class CartLoadingState extends CartState{}
class CartSuccessState extends CartState{
  List<CartItem>? mCartItems;
  CartSuccessState({this.mCartItems});
}
/*class CartLoadedState extends CartState{
  List<CartItem> mCartItems;
  CartLoadedState({required this.mCartItems});
}*/
class CartFailureState extends CartState{
  String errorMsg;
  CartFailureState({required this.errorMsg});
}