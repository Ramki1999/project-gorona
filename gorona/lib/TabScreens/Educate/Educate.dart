import 'package:flutter/material.dart';
import 'package:gorona/TabScreens/Educate/Edu_options.dart';
import 'package:gorona/Widgets/AppDrawer.dart';
import 'package:page_transition/page_transition.dart';

class Educate extends StatefulWidget {
  @override
  _EducateState createState() => _EducateState();
}

class _EducateState extends State<Educate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Educate",style: TextStyle(color: Colors.red),),
              Text("Plus",style: TextStyle(color: Colors.black),)],),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 10.0,
          ),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: ()=> Navigator.push(
                            context,
                            PageTransition(
                            type: PageTransitionType.fade, child: EduOptions())),
                            child:Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Engineering.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Engineering",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Med.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Medicine",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/IT.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("IT and Software",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Nutri-Fitness.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Nutrition+Fitness",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Lawyer.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Law",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Allied-Med.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Allied Medicine",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Management.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Management",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Government.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Governance",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Educator-Training.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Educator+Teacher",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Entrepreneurship.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Entrepreneurship",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Math.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Maths and Statistics",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Sports.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Sports",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Science.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Science",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Sales.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Sales",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Media_n_Communication.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Jornalism",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Tourism.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Tourism",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Art-Design.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Art and Design",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Music.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Music",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Archit.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Architect",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Archieology.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Archaeology",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Aviation and merchant.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Aviation+Merchant",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Defense.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Defence",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/film.jpg',
                                fit: BoxFit.contain,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Film making",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Fashion.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Fashion",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/ECommerce.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("E-Commerce",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Banking.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Banking",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Agri-food.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Agriculture and Food",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/AdMarketing.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Ad - Marketing",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/Animation-Graphics-VFX.jpeg',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Animation Graphics",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child:Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                  ),]
                              ),
                              child:Image.asset(
                                'asset/ddance.png',
                                fit: BoxFit.fill,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Center(
                            child: Text("Dance",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
      ),
    );
  }
}