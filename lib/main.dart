import 'package:flutter/material.dart';

void main() => runApp(whatsapp_ui());

class whatsapp_ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.teal,
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xff075E54),
            foregroundColor: Color.fromARGB(255, 255, 255, 255),
          )),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Whatsapp'),
            bottom: TabBar(tabs: [
              Tab(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.camera_alt,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      'Camera',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(
                      Icons.chat,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    Text(
                      'Chat',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Tab(
                  child: Column(
                children: [
                  Icon(
                    Icons.update_sharp,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  Text(
                    'Updates',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )),
              Tab(
                  child: Column(
                children: [
                  Icon(
                    Icons.call,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  Text(
                    'Calls',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )),
            ]),
            actions: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.search),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        PopupMenuItem(
                          child: Text('New Group'),
                        ),
                        PopupMenuItem(
                          child: Text('Privacy'),
                        ),
                        PopupMenuItem(
                          child: Text('Broadcast'),
                        ),
                        PopupMenuItem(
                          child: Text('Logout'),
                        ),
                      ]),
            ],
          ),
          body: TabBarView(children: [
            Text(''),

            // Chat
            ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/shahzad.JPG'),
                  ),
                  title: index % 2 == 0 || index % 3 == 0
                      ? Text('Shahzad ❤️')
                      : Text(' Ahmad'),
                  trailing: index % 2 == 0 || index % 3 == 0
                      ? Text('1:54 PM')
                      : Text('3:04 PM'),
                  subtitle: index % 2 == 0 || index % 3 == 0
                      ? Text('hii, when will u come')
                      : Text(' bye'),
                );
              },
            ),

            // Status/Updates

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(child: SizedBox(height: 10, width: 10)),
                Container(
                  width: 60, // Set the width of the container
                  height: 60, // Set the height of the container
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Ensures the border is circular
                    border: Border.all(
                      color: Colors.teal, // Border color
                      width: 2, // Border width
                    ),
                  ),
                  child: CircleAvatar(
                    //  backgroundColor: Colors.teal, // Background color of the circle
                    radius: 30, // Radius of the CircleAvatar
                    child: Icon(
                      Icons.person,
                      color: Colors.white, // Color of the icon
                      size: 30, // Size of the icon
                    ),
                  ),
                ),

                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/shahzad.JPG'),
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/shahzad.JPG'),
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/shahzad.JPG'),
                  radius: 30,
                ),
              ],
            ),
            // ListView.builder(
            //   itemCount: 4,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         //SizedBox( width: 60),
            //         CircleAvatar(
            //           backgroundImage: AssetImage('images/shahzad.JPG'),
            //           radius: 30,
            //         ),
            //       ],
            //     );
            //   },
            // ),

            // Calls
            ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/shahzad.JPG'),
                  ),
                  title: index % 2 == 0 || index % 3 == 0
                      ? Text('Shazu')
                      : Text('ahmad'),
                  subtitle: index % 2 == 0 || index % 3 == 0
                      ? Text('missed audio call')
                      : Text('missed video call'),
                  trailing: index % 2 == 0 || index % 3 == 0
                      ? Icon(Icons.call)
                      : Icon(Icons.video_call),
                );
              },
            )
          ])),
    );
  }
}
