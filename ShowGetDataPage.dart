

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GetApiData.dart';
import 'package:flutter_application_1/Sample.dart.dart';

import 'package:flutter_application_1/bloc/internetBloc/internetBloc.dart';
import 'package:flutter_application_1/bloc/internetBloc/internetEvent.dart';
import 'package:flutter_application_1/bloc/internetBloc/internetState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages

import 'package:flutter/widgets.dart';
import 'package:http/http.dart';



class ShowGetDataPage extends StatelessWidget {
   ShowGetDataPage({super.key});
 
  
  GetApiData feild=GetApiData("");
  @override
  Widget build(BuildContext context) {
    return 
  Scaffold(
    bottomNavigationBar: Container(

          child: ElevatedButton(
            
            onPressed: (){
              context.read<PostBloc>().add(OnGetDataEvent(GetApiData(feild.show)));
                  
            }, child: Icon(Icons.login)),
        ),
      body: BlocListener<PostBloc, PostState>(
        listener: (context, state) {
          if(state is ErrorFound)
          {
            print(state.message);
          }
           else if(state is DataFound)
          {
           /// print(p.length);
            print("--------------DataFound");
          }
          // TODO: implement listener
        },
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            if(state is DataFound){
            return 
             Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 40.0,
          child: TextField(
            onChanged: (value){
              feild.show=value;
            },
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
                    itemCount: state.getData.length,
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
                                state.getData[index].title.toString(),
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
                              child: Text(state.getData[index].brand.toString(),
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20
                              ),
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
                              child: Text(state.getData[index].description.toString()),
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
                              child: Text(state.getData[index].price.toString()),
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
        
      ],
    );
 ;
 }else{
  return Text("loading");
 }
            
            }
        ),
      ),
    );
  }
  }

 









