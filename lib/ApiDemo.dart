import 'dart:convert';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:convert' as convert;
import 'package:newrepo/ProfilePage.dart' ;
import 'package:newrepo/ProfilePage.dart';
import 'package:newrepo/SampleApi.dart';



class ApiDemo extends StatefulWidget {
  const ApiDemo({super.key});

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {



  
   List<Product> p=[];
   
  get hhtp => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData().then((data){
     setState(() {
        p=data;
     });
     
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 40.0,
          child: TextField(
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                hintText: ' Search ',
                suffixIcon: const Icon(
                  Icons.search,
                  size: 30.0,
                )),
          ),
        ), //search field end

        Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          height: 40.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1.0,
                    color: Colors.black,
                  )),
                  height: 40.0,
                  alignment: Alignment.center,
                  child: Text('S.no.'),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1.0,
                    color: Colors.black,
                  )),
                  height: 40.0,
                  alignment: Alignment.center,
                  child: Text('Name'),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1.0,
                    color: Colors.black,
                  )),
                  height: 40.0,
                  alignment: Alignment.center,
                  child: Text('Device Details'),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1.0,
                    color: Colors.black,
                  )),
                  height: 40.0,
                  alignment: Alignment.center,
                  child: Text('Token.no.'),
                ),
              ),

               Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1.0,
                    color: Colors.black,
                  )),
                  height: 40.0,
                  alignment: Alignment.center,
                  child: Text('Delete'),
                ),
              ),

               Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1.0,
                    color: Colors.black,
                  )),
                  height: 40.0,
                  alignment: Alignment.center,
                  child: Text('Edit'),
                ),
              ),

            ],
          ), //Heading ends here
        ),

        Expanded(
          child: Container(
            child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                width: 1.0,
                                color: Colors.black,
                              )),
                              height: 40.0,
                              width: 276.0,
                              alignment: Alignment.center,
                              child: Text(
                                p[index].title.toString(),
                                style: TextStyle(color: Colors.black, fontSize: 20),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                width: 1.0,
                                color: Colors.black,
                              )),
                              height: 40.0,
                              width: 276.0,
                              alignment: Alignment.center,
                              child: Text(p[index].brand.toString()),
                            ),
                          ),
                         Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                width: 1.0,
                                color: Colors.black,
                              )),
                              height: 40.0,
                              width: 276.0,
                              alignment: Alignment.center,
                              child: Text(p[index].description.toString()),
                            ),
                          ),
                         Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                width: 1.0,
                                color: Colors.black,
                              )),
                              height: 40.0,
                              width: 276.0,
                              alignment: Alignment.center,
                              child: Text(p[index].price.toString()),
                            ),
                          ),
                
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                width: 1.0,
                                color: Colors.black,
                              )),
                              height: 40.0,
                              width: 276.0,
                              alignment: Alignment.center,
                              child: Icon(Icons.delete),
                            ),
                          ),
                
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                width: 1.0,
                                color: Colors.black,
                              )),
                              height: 40.0,
                              width: 276.0,
                              alignment: Alignment.center,
                              child: Icon(Icons.edit),
                            ),
                          ),
                
                
                        ],
                      );
                    })
             
            
          ),
        ),
        Container(

          child: ElevatedButton(
            
            onPressed: (){
                  
            }, child: Icon(Icons.login)),
        )
      ],
    );
  }

   getData( )async{
 
// ignore: unused_local_variable
final response=await http.get(Uri.parse('https://dummyjson.com/products'));

  var data= jsonDecode(response.body);
 var post = jsonEncode(data);
print("-------------$post");
    if(response.statusCode==200)
    {
     
      for(Map<String,dynamic> index in data["products"]){
          print("data");
     print(Product.fromJson(index).title);
     p.add(Product.fromJson(index));
     
      }

       return p;
    }else{
    return p;
      }


  }

    



}