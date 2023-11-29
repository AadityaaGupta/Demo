import 'package:flutter_application_1/GetApiData.dart';
import 'package:flutter_application_1/PostD.dart';

abstract class PostEvent{}



class OnUserChanged extends PostEvent{

  OnUserChanged({required this.title});

  final PostD title;
  List<Object?> get props =>[title];
 

}

class OnPriceChanged extends PostEvent{

  OnPriceChanged({required this.price});

  final PostD price;
  List<Object?> get props =>[price];
 

}

class OnSubmitEvent extends PostEvent{
PostD post;

OnSubmitEvent(this.post);
  
}

class OnGetDataEvent extends PostEvent{
  GetApiData get;
  
  OnGetDataEvent(this.get);
}



// class InternetGainedEvent extends PostEvent{}

