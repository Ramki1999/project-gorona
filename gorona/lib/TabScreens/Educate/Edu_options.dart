import 'package:flutter/material.dart';
import './Articles.dart';
import './blogs.dart';
import './Concepts.dart';
import './Videos.dart';
class EduOptions extends StatefulWidget {
  @override
  _EduOptionsState createState() => _EduOptionsState();
}

class _EduOptionsState extends State<EduOptions> {
  int currentPage = 0;
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        tooltip: "message - Community",
        backgroundColor: (!flag)?Colors.red:Colors.grey,
        icon: Icon(Icons.chat),
        label: (!flag)?Text("Join Community"):Text("Joined Community"),
        onPressed: (){
          setState(() {
            flag=true;
          });
        },
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) => SplashContent(ind: index),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (20)),
                  child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3, (index) => buildDot(index: index),
                        ),
                  ),
                ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.red : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  SplashContent({this.ind});
  int ind;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (ind==0)?Blogs():(ind==1)?Articles():Videos(),
    );
  }
}