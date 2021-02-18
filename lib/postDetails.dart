import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'dart:async';

class PostDetails extends StatefulWidget {
  // String imgLink;
  String body;
  PostDetails({this.body});
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  Timer _showDialogTimer;
  bool _dialogVisible = false;

  @override
  void dispose() {
    _showDialogTimer?.cancel();
    super.dispose();
  }

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _dialogVisible = !_dialogVisible;
    });
    // _showDialogTimer = Timer(Duration(seconds: 5), _showDialog);
  }

  // void _onPointerUp(PointerUpEvent event) {
  //   // _showDialogTimer?.cancel();
  //   // _showDialogTimer = null;
  //   setState(() {
  //     _dialogVisible = false;
  //   });
  // }

  // void _showDialog() {
  //   setState(() {
  //     _dialogVisible = true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final layers = <Widget>[];

    layers.add(_buildPage());

    if (_dialogVisible) {
      layers.add(_buildDialog());
    }

    return Listener(
      onPointerDown: _onPointerDown,
      // onPointerUp: _onPointerUp,
      child: Stack(
        fit: StackFit.expand,
        children: layers,
      ),
    );
  }

  Widget _buildPage() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Details'),
      ),
      body: Center(
        child: Card(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.network(
                                "https://picsum.photos/id/1014/50")),
                        SizedBox(width: 5),
                        Text("Fatma Elwasify",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                margin: const EdgeInsets.only(
                                  left: 55.0,
                                ),
                                child: Text("2h . ",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                    )))),
                        Icon(
                          Icons.people,
                          color: Colors.grey,
                          size: 12,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(widget.body,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        )),
                    SizedBox(height: 5),
                    GestureDetector(
                      child:
                          Image.network("https://picsum.photos/id/237/335/300"),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text("Fatma Elzahraa and 10 others",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            )),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 1,
                      endIndent: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RaisedButton.icon(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(1.0))),
                          label: Text(
                            'LOVE',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          color: Colors.pink,
                        ),
                        RaisedButton.icon(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(1.0))),
                          label: Text(
                            'COMMENT',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.comment,
                            color: Colors.white,
                          ),
                          color: Colors.pink,
                        ),
                        RaisedButton.icon(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(1.0))),
                          label: Text(
                            'SHARE',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.launch,
                            color: Colors.white,
                          ),
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ],
                ))),
      ),
    );
  }

  Widget _buildDialog() {
    return Container(
      color: Colors.black.withOpacity(0.5),
      padding: EdgeInsets.only(top: 80.0, bottom: 50.0, left: 9.0, right: 9.0),
      child: Card(
        child: Image.network(
          "https://picsum.photos/id/237/150/300",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
