import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('My Profile', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          actions: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              margin: EdgeInsets.only(right: 2),
              child: Icon(
                  Icons.person
              )
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
            ),
            SizedBox(width: 15,)
          ],
        ),
        body: Container(
          width: 1230,
          height: 350,
          margin: EdgeInsets.only(top:20, left: 30, right: 30),
          decoration: BoxDecoration(
            color: Colors.blueGrey[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 1230,
                    height: 100,
                    // margin: EdgeInsets.only(top: 20,left: 30,right: 30),
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: Container( //profile
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.person,
                        size: 80,
                      ),
                    ),
                  )
                ]
              ),
              SizedBox(height: 53,),
              Column ( //text
                children: [
                  Text('Cath',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('chatrine.825240085@stu.untar.ac.id',
                    style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              Divider(), //breaking line between email and buttons
              SizedBox(height: 5,),
              SizedBox(
                width: 210,
                height: 60,
                child: Column(
                  children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Full Name    :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(' Lenaaa Juseyooo')
                    ],
                  ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Department :',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(' Software Engineer'),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Location       :',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(' Jakarta Selatan'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    label: const Text('edit profile'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                    ),
                  ),
                  SizedBox(width: 30), //space between the buttons
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.logout),
                    label: const Text('logout'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}