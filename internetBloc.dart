import 'package:flutter_application_1/PostD.dart';
import 'package:flutter_application_1/Sample.dart.dart';
import 'package:flutter_application_1/bloc/internetBloc/internetEvent.dart';
import 'package:flutter_application_1/bloc/internetBloc/internetState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostBloc extends Bloc<PostEvent,PostState>{
  PostBloc(): super(PostInitialState()){
    // PostD formData;
//     on<OnUserChanged>((event,emit)async{
// emit(PostDataState());

//   try{
//     int=await formData.postData();
//   }catch(e){
//     debugPrint(e as String?);
//   }
//     });

on<OnSubmitEvent>((event, emit)  async {
  PostD? d = event.post;
  if(d == null) {
emit(ErrorFound("Data not found "));
  }
  else if(d.price == null || d.title == null) {
emit(ErrorFound("Data not correct "));
  } else if(d.price!.isEmpty || d.title!.isEmpty) {
emit(ErrorFound("Data not correct "));
  }
  else{
    int result =  await d.postData();
    if(result == 200)
    {
emit(Success("data submited "));
    }
    else{
emit(ErrorFound("Api error"));
    }
  }

});


on<OnGetDataEvent>((event,emit) async{


  List<Product>? EventData=await event.get.getData();

  if(EventData!.isEmpty)
  {
    emit(ErrorFound("Data Not Found"));
  }else{
    emit(DataFound(EventData));
  }

});
   


}


}


//    Connectivity _connectivity=Connectivity();
//    StreamSubscription? connecttivitySubscription;
//     on<InternetLostEvent>((event,emit)=>emit(InternetLostState()) );
//     on<InternetGainedEvent>((event,emit)=>emit(InternetGainedState()));

//     connecttivitySubscription=_connectivity.onConnectivityChanged.listen((result) {
// if(result==ConnectivityResult.mobile||result==ConnectivityResult.wifi)
// {
//   add(InternetGainedEvent());
// }else{
//   add(InternetLostEvent());
// }

//      });

//   }
  
//   get connecttivitySubscription => null;

// @override
//   Future<void> close() {
//     // TODO: implement close
//     connecttivitySubscription?.cancel();
//     return super.close();
//   }

// on<PostDataEvent>((event,emit)=>emit(PostedState()));