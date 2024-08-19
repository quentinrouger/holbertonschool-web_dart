import '4-util.dart';
import 'dart:convert';

Future<dynamic> calculateTotal() async {
    try {
        String userData = await fetchUserData();
        String userId = jsonDecode(userData)["id"];

        String userOrders = await fetchUserOrders(userId);
        List<dynamic> userProducts = jsonDecode(userOrders);

        double total = 0;
        for (final product in userProducts) {
            String productPrice = await fetchProductPrice(product);
            total += jsonDecode(productPrice);
        }

        return total;
    } catch (error) {
        return -1;
    }
}
