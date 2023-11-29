import 'dart:convert';
import "package:http/http.dart" as http;
class PostD {

String? title;
String? price;

PostD(this.title,this.price);

 Future<int> postData() async {
    var response =
        await http.post(Uri.parse("https://dummyjson.com/products/add"),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({
              "Id": 1,
              "title": title,
              "price": price,
            }));
            print(response.body.toString());

    if (response.statusCode == 200) {
     return 200;
    } else {
      return 500;
    }
  }

}

