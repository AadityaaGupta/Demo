import 'package:flutter/material.dart';
import 'package:flutter_application_1/DropDownDemo.dart';
import 'package:flutter_application_1/PostForm.dart';
import 'package:flutter_application_1/ShowGetDataPage.dart';
import 'package:flutter_application_1/bloc/internetBloc/internetBloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => PostBloc(),
        child: DropDownDemo(),
      ),
    );
  }
}

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
