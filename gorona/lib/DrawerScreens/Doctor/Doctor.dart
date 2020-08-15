import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import './DocVideo.dart';
class Doctor extends StatefulWidget {
  @override
  _DoctorState createState() => _DoctorState();
}
TextFormField getCustomEditTextArea({
  String labelValue = "",
  String hintValue = "",
  Function validator,
  IconData icon,
  bool validation,
  TextEditingController controller,
  TextInputType keyboardType = TextInputType.text,
  String validationErrorMsg,
}) {
  return TextFormField(
    style: TextStyle(color: Colors.black),
    controller: controller,
    keyboardType: keyboardType,
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.black,
      ),
      prefixStyle: TextStyle(color: Colors.black),
      fillColor: Colors.white.withOpacity(0.1),
      filled: true,
      isDense: true,
      hintStyle: TextStyle(color: Colors.grey),
      labelStyle: TextStyle(color: Colors.red),
      focusColor: Colors.red,
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(20.0),
        ),
        borderSide: new BorderSide(
          color: Colors.red,
          width: 1.0,
        ),
      ),
      focusedBorder: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(20.0),
        ),
        borderSide: new BorderSide(
          color: Colors.red,
          width: 1.0,
        ),
      ),
      hintText: hintValue,
      labelText: labelValue,
    ),
    validator: validator,
  );
}
class _DoctorState extends State<Doctor> {
  String docType;
  String _fileName = '...';
  String _path = '...';
  String _extension;
  File file;
  bool _hasValidMime = false;
  void _openFileExplorer() async {
    if (_hasValidMime) {
      try {
        _path = await FilePicker.getFilePath(type: FileType.any, );
      }
      catch (e) {
        print("Unsupported operation" + e.toString());
      }

      if (!mounted) return;

      setState(() {
        _fileName = _path != null ? _path.split('/').last : '...';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Doctor's",style: TextStyle(color: Colors.red),),
            Text("Zone",style: TextStyle(color: Colors.black),)],),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 10.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30,),
                  Text("Are you a Doctor?",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20)),
                  Text("                     The nation needs your help.\nRegister as a doctor and server the people in need!!",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  getCustomEditTextArea(
                      labelValue: "Full Name",
                      hintValue: "Dr.A.P.J Abdul Kalam",
                      validator: (value) {
//                        _list.insert(0, value);
//                        validateMinLength(value, length: 3);
                      },
                      icon: Icons.account_circle),
                  SizedBox(height: 10),
                  getCustomEditTextArea(
                      labelValue: "Phone Number",
                      hintValue: "9840202020",
                      keyboardType: TextInputType.phone,
                      validator: (value) {
//                        _list.insert(0, value);
//                        validateMinLength(value, length: 3);
                      },
                      icon: Icons.calendar_today),
                  SizedBox(height: 10),
                  getCustomEditTextArea(
                      labelValue: "Name of the Medical Council",
                      hintValue: "Medical Council of India",
                      validator: (value) {
//                        _list.insert(0, value);
//                        validateMinLength(value, length: 3);
                      },
                      icon: Icons.account_balance),
                  SizedBox(height: 10),
                  getCustomEditTextArea(
                      labelValue: "Registration No ",
                      hintValue: "MCI-2020",
                      validator: (value) {
//                        _list.insert(0, value);
//                        validateMinLength(value, length: 3);
                      },
                      icon: Icons.confirmation_number),
                  SizedBox(height: 10),
                  getCustomEditTextArea(
                      labelValue: "Year of Registration",
                      hintValue: "1997",
                      validator: (value) {
//                        _list.insert(0, value);
//                        validateMinLength(value, length: 3);
                      },
                      icon: Icons.calendar_today),
                  SizedBox(height: 10),
                  new Container(
                    decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                    padding: const EdgeInsets.all(5.0),
                    child: new DropdownButton(
                        hint: new Text('SELECT SPECIALISATION',style: TextStyle(fontWeight: FontWeight.bold,),),
                        value: docType,
                        items: <DropdownMenuItem>[
                          new DropdownMenuItem(
                            child: new Text('PEDIATRICIAN'),
                            value: 'Pediatrician',
                          ),
                          new DropdownMenuItem(
                            child: new Text('DENTIST'),
                            value: 'Dentist',
                          ),
                          new DropdownMenuItem(
                            child: new Text('OPHTHALMOLOGIST'),
                            value: 'Ophthalmologist',
                          ),
                          new DropdownMenuItem(
                            child: new Text('PSYCHOLOGIST'),
                            value: 'Psychologist',
                          ),
                          new DropdownMenuItem(
                            child: new Text('GENERAL DOCTOR'),
                            value: 'General Doctor',
                          ),
                        ],
                        onChanged: (value) => setState(() => docType = value)),
                  ),
                  SizedBox(height: 10),
                  Text("UPLOAD CERTIFICATE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red)),
                  ConstrainedBox(
                    constraints: new BoxConstraints(maxWidth: 150.0),
                    child: new Container(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                    child: new RaisedButton(
                      onPressed: () => _openFileExplorer(),
                      child: new Text("Open file picker",style: TextStyle(color: Colors.red),),
                      color: Colors.white,
                      splashColor: Colors.grey
                    ),
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    color: Colors.redAccent,
                    onPressed: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => DocVideo()));
                    },
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
