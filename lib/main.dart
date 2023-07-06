import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children:[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: (){},
                        icon:  const Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          "Messages",
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          "Online",
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          "Groups",
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          "More",
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        )),
                    const SizedBox(
                      width: 35,
                    ),

                  ],
                ),
              )
            ],
          ),


          Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                decoration: const BoxDecoration(
                  color: Color(0xFF27c1a9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                )),
                height: 230,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                            "Favorite contacts",
                          style: TextStyle(color: Colors.white),
                        ),

                        IconButton(
                            onPressed: (){},
                            icon:  const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:  [
                          buildContactAvatar('Yassin', 'yassin.png'),
                          buildContactAvatar('Lina', 'lina.png'),
                          buildContactAvatar('Ali', 'ali.png'),
                          buildContactAvatar('Chahed', 'chahed.png'),
                          buildContactAvatar('Mhammed', 'mhammed.png'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
          ),
          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Color(0xFFEFFFFC),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                    ),
                ),
                child: ListView(
                  padding: EdgeInsets.only(left: 25),
                  children: [
                    buildConversationRow('Ali','Hi! how are you','ali.png',3),
                    buildConversationRow('Ahmed','','Ahmed.png',0),
                    buildConversationRow('Lina','','lina.png',5),
                    buildConversationRow('Mhammed','','mhammed.png',2),
                    buildConversationRow('Yassin','','yassin.png',1),
                    buildConversationRow('Chahed','','chahed.png',0),




                  ],
                ),
              ))
        ]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: Color(0xFF27C1A9),
          child: Icon(Icons.edit_outlined, size: 30,),
          onPressed: (){},
        ),
      ),
    );
  }
}

Column buildConversationRow(String name, String message, String filename, int msgCount){
  return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
                children:[
                  UserAvatar(filename: filename),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        message,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ]

            ),
            Padding(
              padding: const EdgeInsets.only(right: 25,top: 5),
              child: Column(
                children: [
                  Text('00:02',style: TextStyle(
                      fontSize: 10
                  ),),
                  SizedBox(height: 15,),
                  if(msgCount>0)
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Color(0xFF24CC10),
                    child: Text(
                      msgCount.toString(),
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Divider(
          indent: 80,
        )
      ],
    );

}

Padding buildContactAvatar(String name, String filename) {
  return Padding(
    padding: const EdgeInsets.only(right: 20.0),
    child: Column(
      children: [
        UserAvatar(
          filename: filename,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        )
      ],
    ),
  );
}



class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({super.key,required this.filename});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset("assets/images/$filename").image,
      ),
    );
  }
}



