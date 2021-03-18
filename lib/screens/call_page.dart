import 'dart:ui';

import 'package:agora_token_example/widgets/call_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screenshot_and_share/screenshot_share.dart';

class CallPage extends StatefulWidget {
  final String userName;
  final String channelName;
  CallPage(this.userName, this.channelName);
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(132, 174, 0, 0.5),
          title: Text('Hi ' + widget.userName + '!'),
          elevation: 10,
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/dp.jpeg'),
            radius: 10,
            backgroundColor: Color.fromRGBO(255, 104, 220, 1),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.image),
                onPressed: () {
                  _capturePng();
                })
          ],
        ),
        body: VideoCall(widget.channelName));
  }

  Future<void> _capturePng() async {
    ScreenshotShare.takeScreenshotAndShare();
  }
}
