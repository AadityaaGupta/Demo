
import 'package:flutter_application_1/PostD.dart';
import 'package:flutter_application_1/Sample.dart.dart';

abstract class PostState{}

class PostInitialState extends PostState{}

class ErrorFound extends PostState{
  String message;
  ErrorFound(this.message){}
}

class Success extends PostState{
  String message;
  Success(this.message){}
}

class PostDataState extends PostState{

  late final PostD title;
  late final PostD price;

  PostDataState(this.price,this.title);
}

class DataFound extends PostState{
  List<Product> getData=[];

  DataFound(this.getData){}
}

