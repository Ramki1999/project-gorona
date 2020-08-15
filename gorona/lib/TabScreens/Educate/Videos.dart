import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Center(child: Container(color: Colors.yellow[50],padding: const EdgeInsets.all(20),child: Column(children: <Widget>[
          SizedBox(height: 30),
        Text("VIDEOS",style: TextStyle(color: Colors.redAccent[700],fontSize: 30,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
            Container(
                    child: Column(
                  children: <Widget>[
                    GestureDetector(
                                          onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return WebviewScaffold(
                              url:  'https://www.youtube.com/watch?v=fT7LTaGzcok',
                            );
                    }, 
                        ));},
                      // onTap: () => WebviewScaffold(url: "https://www.youtube.com/watch?v=fT7LTaGzcok",),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'asset/civil.PNG',
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          )),
                    ),
                      Text("21 Types of Engineers | Engineering Majors Explained (Engineering Branches)",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 2,),
                  ],
                )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Column(
                  children: <Widget>[
                    GestureDetector(
                                                                onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return WebviewScaffold(
                              url:  'https://www.youtube.com/watch?v=XmtKwDE_5lk',
                            );
                    }, 
                        ));},
                      // onTap: () => WebviewScaffold(url: "https://www.youtube.com/watch?v=XmtKwDE_5lk",),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'asset/proj.PNG',
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          )),
                    ),
                      Text("The most impressive civil engineering projects",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 2,),
                      ],
                )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Column(
                  children: <Widget>[
                    GestureDetector(
                                                                                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return WebviewScaffold(
                              url:  'https://www.youtube.com/watch?v=W74y1RxN6BA',
                            );
                    }, 
                        ));},
                      // onTap: () => WebviewScaffold(url: "https://www.youtube.com/watch?v=W74y1RxN6BA",),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'asset/mech.PNG',
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          )),
                    ),
                      Text("What is Mechanical Engineering?",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 2,),
                      ],
                ))
      ],),),),
    ));
  }
}
