import 'package:flutter/material.dart';
import 'package:newrepo/ProfilePage.dart';
import 'package:newrepo/mycustomeviwe.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  TextEditingController _field = TextEditingController();
  TextEditingController _field1 = TextEditingController();
  TextEditingController editingController = TextEditingController();

  final List<UserDetails> userName = [
    UserDetails(sNo: 1, name: 'redmi 9', deviceDetail: '4G', tokenNo: 2),
    UserDetails(sNo: 2, name: 'Mi 10', deviceDetail: '5G', tokenNo: 6),
    UserDetails(sNo: 3, name: 'oppo', deviceDetail: '4G', tokenNo: 8),
    UserDetails(sNo: 4, name: 'narzo', deviceDetail: '5G', tokenNo: 7),
    UserDetails(sNo: 5, name: 'vivo v21', deviceDetail: '5G', tokenNo: 10),
  ];

  List<UserDetails> dName = [];

  @override
  void initState() {
    dName.addAll(userName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuerry = MediaQuery.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


StarRatingView((value){

  print(value);
}),







            Expanded(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: TextField(
                  controller: _field,
                  style: TextStyle(
                    fontSize: 20.0,
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
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.5),
              width: 100.0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade100,
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder: (context, setState) {
                            return AlertDialog(
                              alignment: Alignment.centerRight,
                              title: Text('List of Users'),
                              content: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: TextField(
                                      controller: editingController,
                                      onChanged: (value) {
                                         dName.clear();
    dName = userName.where((element) {
      print(element.Name!.toLowerCase() + "......." + value.toLowerCase());
      bool t = element.Name!.toLowerCase().contains(value.toLowerCase());
      print(t);
      return t;
    }).toList();
    print(dName.length);
    setState(() {

    });
                                      },
                                      decoration: InputDecoration(
                                        suffixIcon: Icon(Icons.search),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 200,
                                      height: 200,
                                      child: ListView.builder(
                                        itemCount: dName.length,
                                        itemBuilder: (context, index) {
                                          return CheckboxListTile(
                                              title: Text(
                                                  dName[index].Name.toString()),
                                              value: dName[index].ischecked,
                                              activeColor: Colors.yellow,
                                              checkColor: Colors.green,
                                              onChanged: (bool? value) {
                                                dName[index].ischecked =
                                                    value!;
                                                setState(() {});
                                                //  setState(() {
                                                //    isChecked=value!;
                                                //  });
                                              });
                                        },
                                      ))
                                ],
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      _field.text = "ddsfg";
                                      setState(() {});
                                    },
                                    child: Text('Save'))
                              ],
                            );
                          });
                        });
                  },
                  child: Text(
                    'pick',
                    style: TextStyle(
                      color: Colors.blueGrey.shade600,
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }

  
}
