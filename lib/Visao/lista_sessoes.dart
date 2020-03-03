import 'package:flutter/material.dart';

class ListaSessoes extends StatefulWidget {
  @override
  _ListaSessoesState createState() => _ListaSessoesState();
}

class _ListaSessoesState extends State<ListaSessoes> {
  List<int> content = [1, 2, 3, 4, 5, 6, 7];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView.separated(
            itemBuilder: (_, int index) {
              return LimitedBox(
                maxHeight: 60,
                child: Row(
                  children: <Widget>[
                      ClipOval(
                        
                        child: Image.network("https://s2.glbimg.com/oGOP1N5kCTMEZa35A7OE1zNZsiA=/e.glbimg.com/og/ed/f/original/2020/01/08/baby-yoda.jpg"),
                      )
                  ],
                ),
              );
            },
            separatorBuilder: (_, index) => Divider(),
            itemCount: content.length),
      ),
    );
  }
}
