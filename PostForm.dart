import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/PostD.dart';
import 'package:flutter_application_1/bloc/internetBloc/internetBloc.dart';
import 'package:flutter_application_1/bloc/internetBloc/internetState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import "package:http/http.dart" as http;
import 'package:flutter/widgets.dart';

import 'bloc/internetBloc/internetEvent.dart';

class PostForm extends StatefulWidget {
  const PostForm({super.key});

  @override
  State<PostForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PostForm> {

   PostD formData =PostD("", "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<PostBloc, PostState>(
        listener: (context, state) {
          if(state is ErrorFound)
          {
            print(state.message);
          }
           else if(state is Success)
          {
            print(state.message);
          }
          // TODO: implement listener
        },
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            
            return Column(
              children: [
                Center(
                  child: Container(
                    child: TextField(
                      onChanged: (value){
                          formData?.title=value;
                          
                      },
                      
                      decoration: InputDecoration(hintText: 'enter user name'),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    child: TextField(
                      onChanged: (value){
                          formData?.price=value;
                      },
                  
                      decoration: InputDecoration(hintText: 'enter id'),
                    ),
                  ),
                ),
                Container(
                  height: 200.0,
                  width: 400.0,
                  child: Center(
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<PostBloc>().add(OnSubmitEvent(formData!));
                         
                        },
                        child: Text('submit')),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

 
}
