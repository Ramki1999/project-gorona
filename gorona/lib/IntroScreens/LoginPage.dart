// import 'package:gorona/Widgets/FadeAnimation.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:gorona/IntroScreens/HomeScreen.dart';
// import 'package:gorona/DrawerScreens/Account.dart';
// import 'package:pin_entry_text_field/pin_entry_text_field.dart';

// class LoginPage extends StatelessWidget {

//  final _phoneController = TextEditingController();
//  final _nameController = TextEditingController();

//  @override
//  void initState() {
//    getUser().then((user) {
//      if (user != null) {
//        // send the user to the home page
//        HomeScreen();
//      }
//    });
//  }
//  Future<bool> loginUser(String phone, BuildContext context) async{
//    FirebaseAuth _auth = FirebaseAuth.instance;

//    _auth.verifyPhoneNumber(
//        phoneNumber: phone,
//        timeout: Duration(seconds: 60),
//        verificationCompleted: (AuthCredential credential) async{
//          Navigator.of(context).pop();

//          AuthResult result = await _auth.signInWithCredential(credential);

//          FirebaseUser user = result.user;

//          if(user != null){
//            Navigator.push(context, MaterialPageRoute(
//                builder: (context) => UserDetails(user: user,)
//            ));
//          }else{
//            print("Error");
//          }

//          //This callback would gets called when verification is done automatically
//        },
//        verificationFailed: (AuthException exception){
//          print(exception);
//        },
//        codeSent: (String verificationId, [int forceResendingToken]){
//          return showDialog(
//            context: context,
//            barrierDismissible: false,
//            builder: (context) {
//              return Dialog(
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(20)
//                ),
//                child: ConstrainedBox(
//                  constraints: BoxConstraints(maxHeight:250),
//                  child: FadeAnimation(1,Container(
// //                    color: Color.fromRGBO(3, 9, 23, 1),
//                    padding: const EdgeInsets.only(top: 10,left: 3,right: 2,bottom: 10),
//                    child: Column(
//                      children: <Widget>[
//                        SizedBox(height: 20,),
//                        Text("Enter your OTP : ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
//                        Image.asset("assets/images/otp-icon.png",height: 100,),
//                        SizedBox(height: 10,),
//                        PinEntryTextField(
//                          fields: 6,
//                          showFieldAsBox: false,
// //                    fontSize: 5,
//                          onSubmit:  (String pin ) async{
// //                          final code = _codeController.text.trim();
//                            AuthCredential credential = PhoneAuthProvider.getCredential(verificationId: verificationId, smsCode: pin);

//                            AuthResult result = await _auth.signInWithCredential(credential);

//                            FirebaseUser user = result.user;

//                            if(user != null){
//                              Navigator.push(context, MaterialPageRoute(
//                                  builder: (context) => UserDetails(user: user,)
//                              ));
//                            }else{
//                              print("Error");
//                            }
//                          },
//                        ),
//                      ],
//                    )
//                  )),
//                ),
//              );
//            },
//          );
//        },
//        codeAutoRetrievalTimeout: null
//    );
//  }

//  Future<FirebaseUser> getUser() async{
//    FirebaseAuth _auth = FirebaseAuth.instance;
//    return await _auth.currentUser();
//  }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Color.fromRGBO(3, 9, 23, 1),
//      body: Container(
//        padding: EdgeInsets.all(30),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[

//            FadeAnimation(1.2, Text("Login",
//            style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),)),
//            SizedBox(height: 30,),
//            FadeAnimation(1.5,Text("Enter your phone number with country code if you are not in India",style: TextStyle(color: Colors.white),),),
//            SizedBox(height: 30,),
//            FadeAnimation(1.8, Container(
//              padding: EdgeInsets.all(10),
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(10),
//                color: Colors.white
//              ),
//              child: Column(
//                children: <Widget>[
//                  Container(
//                    decoration: BoxDecoration(
//                      border: Border(bottom: BorderSide(color: Colors.grey[300]))
//                    ),
//                    child: Column(
//                      children: <Widget>[

//                        TextField(
//                          decoration: InputDecoration(
//                              icon: Icon(Icons.phone,color: Color.fromRGBO(3, 9, 23, 1),),
//                              border: InputBorder.none,
//                              hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
//                              hintText: "Phone number(Eg : 9677130543)"
//                          ),
//                          keyboardType: TextInputType.phone,
//                          controller: _phoneController,
//                        ),
//                      ],
//                    )

//                  ),
//                ],
//              ),
//            )),
//            SizedBox(height: 40,),
//            FadeAnimation(1.8, Center(
//              child:GestureDetector(
//              onTap: (){
//                final phone = _phoneController.text.trim();
//                loginUser((phone[1]=="+")?phone:"+91"+phone
//                    , context);
//              },
//              child: Container(
//                width: 120,
//                padding: EdgeInsets.all(15),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(50),
//                  color: Colors.blue[800]
//                ),
//                child: Center(child: Text("Login", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
//              ),
//            ))),
// //            (i==1)?FadeAnimation(2.1,Center(child:Column(children: <Widget>[Text("Enter OTP : "),PinEntryTextField],))):Null
//          ],
//        ),
//      ),
//    );
//  }
// }

