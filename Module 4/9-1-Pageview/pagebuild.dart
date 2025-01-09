import 'package:flutter/material.dart';

class PageViewBuild extends StatefulWidget {


  @override
  _PageViewBuildState createState() => _PageViewBuildState();
}

class _PageViewBuildState extends State<PageViewBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Builder'),
        centerTitle: true,
        elevation: 0,
      ),
      body: PageView.builder(
        // itemCount: ,
        itemBuilder: (context, index)
        {
        return Container
          (
            color: index % 2 == 0 ? Colors.green : Colors.blue[700],
          );
      }),
    );
  }
}
