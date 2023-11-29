
import "dart:convert";

import "package:flutter_application_1/Sample.dart.dart";
import "package:http/http.dart" as http;

class GetApiData 
{
List<Product> p=[];
  String? show;
  GetApiData(this.show);
 getData()async{
 
// ignore: unused_local_variable
final response=await http.get(Uri.parse('https://dummyjson.com/products'));

  var data= jsonDecode(response.body);
//  var post = jsonEncode(data);
// print("-------------$post");
    if(response.statusCode==200)
    {
     
      for(Map<String,dynamic> index in data["products"]){
    //       print("data");
    //  print(Product.fromJson(index).title);
     p.add(Product.fromJson(index));
     
      }
      print("--------------------getData----------------------");
      print(p[2].brand.toString());
       return p;
    }else{
    return p;
      }


  }

}