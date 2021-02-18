import 'package:flutter/material.dart';
import 'MyPage.dart';
import 'tab_item.dart';

void main() => runApp(MyApp());
int index = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Sign in';

    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Center(
            child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MyCustomForm(),
              ]),
        )),
        bottomNavigationBar: BottomNavigationBar(
          // onTap: onTabTapped,
          // currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile'))
          ],
        ),

        // Center(child:
        // Container(
        //   child:Column(children
        // crossAxisAlignment: CrossAxisAlignment.start,
        // : <Widget>[
        //   MyCustomForm(),

        //   ])

        // )
        // ),

        //   floatingActionButton: FloatingActionButton(
        //   onPressed: (){
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context)=>MyPage()),
        //     );
        //   },
        //   tooltip: 'Increment',
        //   child: Icon(Icons.add),
        // ),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  // int _currentIndex = 0;
  // final List<Widget> _children = [
  //   PlaceholderWidget(Colors.white),
  //  PlaceholderWidget(Colors.deepOrange),
  //  PlaceholderWidget(Colors.green)
  // ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      padding: EdgeInsets.only(top: 24),
      alignment: Alignment.center,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'E-mail',
                )),
            TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                )),
            Row(children: <Widget>[
              Expanded(
                // padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyPage()),
                      );
                    }
                  },
                  child: Text('Login'),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Center(
                  child: Text(
                'Need an account? Register',
                style: TextStyle(color: Colors.black, fontSize: 18),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(child: Text('Forget Password?')),
            )
          ],
        ),
      ),
    );
    
    // void onTabTapped(int index) {
    //   setState(() {
    //     _currentIndex = index;
    //   });
    // }
  }
}

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.pink ,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Sign in'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();//_:private
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

// final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {

//     return Form(
//       key: _formKey,

//       child:
//        Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children:
//         SingleChildScrollView(child:column());
//       <Widget>[
//           TextFormField(
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'Please enter some text';
//               }
//               return null;
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 if (_formKey.currentState.validate()) {
//                   Scaffold.of(context)
//                       .showSnackBar(SnackBar(content: Text('Processing Data')));
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ),
//         ],

//       ),
//     );

//     // return Form(
//     //       key:_formKey,
//     //       // mainAxisAlignment: MainAxisAlignment.center,
//     //       child:Column(
//     //         children:<Widget>[
//     //         TextFormField(
//     //           validator: (value){
//     //             if(value.isEmpty){
//     //               return "Email can't be empty";
//     //             }
//     //             return null;
//     //           }
//     //         )
//     //         // Text( 'E-mail', style: TextStyle(fontWeight:FontWeight.bold, color:Colors.black,fontSize:25),),
//     //         //TextFormField(
//     //           // initialValue:'Enter email',
//     //           // decoration:
//     //           //   InputDecoration(
//     //           //     labelText: 'E-mail',
//     //           //     labelStyle: TextStyle(fontSize:20),
//     //           //     // errorText:'Enter valid email',
//     //           //     // validator: (value) {
//     //           //     //     if (value.isEmpty) {
//     //           //     //       return "E-mail can't be empty";
//     //           //     //     }
//     //           //     //     return null;
//     //           //     //   },
//     //           //     border:
//     //           //       OutlineInputBorder(),
//     //           //         suffixIcon:Icon(Icons.check_circle,),
//     //           //   ),
//     //        // ),
//     //         //TextFormField(
//     //           // initialValue:'Enter password',
//     //           // decoration:
//     //           //   InputDecoration(
//     //           //     labelText: 'Password',
//     //           //     labelStyle: TextStyle(fontSize:20),
//     //           //     //  errorText:"Password can't be empty",
//     //           //     // validator: (value) {
//     //           //     //     if (value.isEmpty) {
//     //           //     //       return "Password can't be empty";
//     //           //     //     }
//     //           //     //     return null;
//     //           //     //   },
//     //           //     border:
//     //           //       OutlineInputBorder(),
//     //           //         suffixIcon:Icon(Icons.check_circle,),
//     //           //   ),
//     //        // ),
//     //       ],
//     //       )
//     //     );

//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: (){
//       //     Navigator.push(
//       //       context,
//       //       MaterialPageRoute(builder: (context)=>MyPage()),
//       //     );
//       //   },
//       //   tooltip: 'Increment',
//       //   child: Icon(Icons.add),
//       // ),

//   }
// }
