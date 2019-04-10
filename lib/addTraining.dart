import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';

class AddTraining extends StatefulWidget {
  AddTraining();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('add training'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "タイトル",
                  hintText: "training name"
                ),
                maxLines: 1,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "詳細",
                  hintText: "training description"
                ),
                maxLines: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'タイプ',
                  ),
                  Radio(
                    value: 0,
                    groupValue: 0,
                    onChanged: (value) {
                    },
                  ),
                  Text(
                    '回数',
                  ),
                  Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {
                    },
                  ),
                  Text(
                    '時間',
                  ),
                  Switch(
                    value: true,
                    onChanged: (value) {
                      /*
                      setState(() {
                        isSwitched = value;
                      });
                      */
                    },
                    activeTrackColor: Colors.lightGreenAccent, 
                    activeColor: Colors.green,
                  ),
                  Text(
                    'ボイス',
                  ),
                ]
              ),
              Text(
                'セット数',
              ),
              Slider(value: 0, onChanged: (value) {}),
              OutlineButton(
                onPressed: (){},
                child: Text("保存"),
                borderSide: BorderSide(color: Colors.black),
              )
              // TODO 回数 or 時間で表示するフォームの制御
            ],
          ),
        ),
        /*new ListView(children: [
          new Row(children: <Widget>[
            new Container(
                margin: const EdgeInsets.only(left: 16.0),
                child: new Image.asset('images/${_library.category}.png')),
            new Container(
                margin: const EdgeInsets.all(16.0),
                child: new Text(_library.formalName,
                    style: new TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    )))
          ]),
          new Container(
              margin: const EdgeInsets.all(16.0),
              child: new Text('${_library.post} ${_library.address}')),
          new Container(
              margin: const EdgeInsets.all(16.0),
              child: new Text(_library.tel)),
          new Container(
              margin: const EdgeInsets.all(16.0),
              child: new Text(_library.urlPC)),

          ]*/
        );
  }
}
