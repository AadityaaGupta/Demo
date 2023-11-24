import 'package:flutter/material.dart';
import 'package:newrepo/ProfilePage.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  List<UserDetails> details = [
    UserDetails(sNo: 1, name: 'redmi 9', deviceDetail: '4G', tokenNo: 2),
    UserDetails(sNo: 2, name: 'Mi 10', deviceDetail: '5G', tokenNo: 6),
    UserDetails(sNo: 3, name: 'oppo', deviceDetail: '4G', tokenNo: 8),
    UserDetails(sNo: 4, name: 'narzo', deviceDetail: '5G', tokenNo: 7),
    UserDetails(sNo: 5, name: 'vivo v21', deviceDetail: '5G', tokenNo: 10),
  ];

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
                itemCount: details.length,
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
                            details[index].sNo.toString(),
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
                          child: Text(details[index].Name.toString()),
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
                          child: Text(details[index].deviceDetail.toString()),
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
                          child: Text(details[index].tokenNo.toString()),
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
                }),
          ),
        )
      ],
    );
  }
}