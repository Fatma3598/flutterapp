import 'package:flutter/material.dart';
import 'MyCard.dart';
import 'package:app1/models/posts.dart';
import 'package:app1/services/postService.dart';

// import 'package:transparent_image/transparent_image.dart';
class MyPage extends StatefulWidget {
  // MyPage({Key key, this.title}) : super(key: key);

  // final String title;

  @override
  _MyPageState createState() => _MyPageState();//_:private
}
class ImageCard extends StatelessWidget {
  final String imagePath;

  ImageCard({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Image.asset(imagePath),
    );
  }
}
class _MyPageState extends State<MyPage> {
  List<Posts> postList=new List();
  List<String> imgs = [
    "https://picsum.photos/200/300",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150"
  ];
  void initState(){
    super.initState();
    getPostFromServer();
  }
 getPostFromServer() async{
   postList = await PostService().getPosts();
   setState((){});
 }
  

  @override
  Widget build(BuildContext context) {
    //String width = "80";//MediaQuery.of(context).size.width/4;
    // double myWidth=150;
    // String width1 = "150";
    // Image img1=Image.network("https://picsum.photos/id/237/80/300");
    return Scaffold(
      appBar: AppBar(
        title:Text("Posts"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount : postList.length,
        itemBuilder:(BuilderContext, int index){
          return MyCard(
            text: postList[index],
          );
        }
      ),

      // SingleChildScrollView(
      //   child: Center(
      //     child:Card(
      // child: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: 
      //   Column(
      //   children: [
      //     Row(
      //       children: [
      //         // Image.network("https://picsum.photos/id/237/80/300"),
      //         GestureDetector(
              
      //         onTap: () => setState(() {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => MyCard(imgLink: "https://picsum.photos/id/237/150/300")),
      //             );
      //             }),
      //         child:
              // Image.network("https://picsum.photos/id/237/80/300"),
            // ),
            // GestureDetector(
            //   onTap: () => setState(() {
            //         Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => MyCard(imgLink: "https://picsum.photos/id/1001/150/300")),
            //       );
            //       }),
            //   child: Image.network("https://picsum.photos/id/1001/$width/300"),
            // ),
            // GestureDetector(
            //   onTap: () => setState(() {
            //         Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => MyCard(imgLink: "https://picsum.photos/id/1/150/300")),
            //       );
            //       }),
            //   child: Image.network("https://picsum.photos/id/1/$width/300"),
            // ),
            // GestureDetector(
            //   onTap: () => setState(() {
            //         Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => MyCard(imgLink: "https://picsum.photos/id/1011/150/300")),
            //       );
            //       }),
            //   child: Image.network("https://picsum.photos/id/1011/$width/300"),
            // ),
            // GestureDetector(
            //   onTap: () => setState(() {
            //         Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => MyCard(imgLink: "https://picsum.photos/id/1012/150/300")),
            //       );
            //       }),
            //   child: Image.network("https://picsum.photos/id/1012/$width/300"),
            // ),
              // Image.network("https://picsum.photos/id/237/$width/300"),
              // Image.network("https://picsum.photos/id/1001/$width/300"),
              // Image.network("https://picsum.photos/id/1011/$width/300"),
              // Image.network("https://picsum.photos/id/1012/$width/300"),
              
              
    //         ],
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children:[
            
    //         RaisedButton.icon(
    //           onPressed: (){ },
    //          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
    //           label: Text('Like',  style: TextStyle(color: Colors.white),),
    //           icon: Icon(Icons.thumb_up, color:Colors.white,),
    //           color:Colors.pink,),
    //           RaisedButton.icon(
    //           onPressed: (){ },
    //          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
    //           label: Text('Comment',  style: TextStyle(color: Colors.white),),
    //           icon: Icon(Icons.comment, color:Colors.white,),
    //           color:Colors.pink,)
    //       ],            
    //           ),
    //     ],
    //     ),
    //   ),
    // ),
        
    //     ),
    //   ),
    );
      // Container(
      //   child:Card(
      // child: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   // child: Center(
      //     child: Row(
      //       children: 
      //       ListView.builder(
      //         padding: const EdgeInsets.all(8),
      //         itemCount : imgs.length,
      //         itemBuilder:(BuilderContext, int index){
      //           Image.network(imgs[index]);
                // Text(
                //   widget.text,
                //   style: TextStyle(color: Colors.green, fontSize: 30),
                // )
              // }
            // [
            //   Image.network(widget.imgLink),
            //   Text(
            //     widget.text,
            //     style: TextStyle(color: Colors.green, fontSize: 30),
            //   )
            // ],
        //   ),
        // ),
      
    // );
        // return MyCard(
        //     imgLink: imgs,
        //     // text: "Hello $index",
        //   );
      // )
      
      // ListView.builder(
      //   padding: const EdgeInsets.all(8),
      //   itemCount : imgs.length,
      //   itemBuilder:(BuilderContext, int index){
      //     return MyCard(
      //       imgLink: imgs[index],
      //       text: "Hello $index",
      //     );
      //   }
      //   // children:[
      //     // MyCard(text:"Hello",imgLink:"assets/img2.jpg",),
      //     // MyCard(text:"Hello 2",imgLink:"assets/img1.jpg",),
      //     // MyCard(text:"Hello 3",imgLink:"assets/img.jpg",),
      // // ],
      // )
    // );
  }
}