import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      drawer : Drawer(
        child: Container(
          color: Colors.lime[50],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            CircleAvatar(
              backgroundImage: ExactAssetImage('assets/hp1.jpg'),
              radius: 85,
              backgroundColor: Colors.transparent,
            ),

            Text(
              'Harry Potter',
              style : TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
             ),

            SizedBox(height: 28,),

            Text(
              "My eyes aren't glistening with the ghosts of my past.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 50,),

            Divider(
              color: Colors.yellow[600], 
              thickness: 0.8,
            ),

            ListTile(
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text(
                    '394',
                    style : TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center
                  ),

                  Text(
                    'POSTS',
                    style : TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center
                  ),
                ],
              ),

              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text(
                    '1M',
                    style : TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center
                  ),

                  Text(
                    'FOLLOWERS',
                    style : TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center
                  ),
                ],
              ),

              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text(
                    '745',
                    style : TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center
                  ),

                  Text(
                    'FOLLOWING',
                    style : TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center
                  ),
                ],
              ),
            ),

            Divider(
              color: Colors.yellow[600], 
              thickness: 0.8,
            ),

            SizedBox(
              height: 100,
            ),

          ],
        ),
      ),
    );
  }
}
