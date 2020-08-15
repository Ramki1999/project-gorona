import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Articles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(child: Center(child: Container(color: Colors.yellow[50],padding: const EdgeInsets.all(20),child: Column(children: <Widget>[
          Text("ARTICLES",style: TextStyle(color: Colors.redAccent[700],fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Container(
                  child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => WebviewScaffold(url: "https://www.engineering.com/Blogs/tabid/3207/ArticleID/16282/Ownership-Is-SO-Overrated-Products-as-a-Service.aspx",),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          'https://clqtg10snjb14i85u49wifbv-wpengine.netdna-ssl.com/wp-content/uploads/2015/10/Spectrum-IEEE.jpg',
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        )),
                  ),
                    Text("IEEE Spectrum: Batteries Running on Shrooms",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 2,),
                    Text("'Soon the fungi may be powering your Prius or getting your Galaxy phone to run longer.'Engineers at the University of California have shown that mushrooms can create long-lasting, environmentally friendly anodes for lithium-ion batteries.",maxLines: 4,),
                ],
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => WebviewScaffold(url: "https://www.engineering.com/Blogs/tabid/3207/ArticleID/15801/AI-Taking-Your-Job-Relax-It-Cant-Even-Pour-You-a-Drink.aspx",),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          'https://clqtg10snjb14i85u49wifbv-wpengine.netdna-ssl.com/wp-content/uploads/2015/10/TheEngineer.png',
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        )),
                  ),
                    Text("the ENGINEER: Lexus Unfolds the Origami Car",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 2,),
                    Text("Lexus has commissioned the so-called Origami Car. The Origami Car is a replica of the Lexus IS, but is built almost entirely from card. The vehicle has a fully fitted interior, functioning doors, rolling wheels and an electric motor mounted on a steel and aluminum frame. ",maxLines: 4,),
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
                              url:  'https://www.engineering.com/Blogs/tabid/3207/ArticleID/15656/IP-Never-Heard-of-It-How-Do-You-Spell-That.aspx',
                            );
                    }, 
                        ));},
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          'https://clqtg10snjb14i85u49wifbv-wpengine.netdna-ssl.com/wp-content/uploads/2015/10/Develop-3D.png',
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        )),
                  ),
                    Text("DEVELOP3D: Adidas Futurecraft Series to 3D Print Your Sole",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 2,),
                    Text("As only China can do, there is a tremendous amount of engineering talent supplied at low cost in the country. Combined with the lower cost of materials and manufacturing",maxLines: 2,),
                ],
              ))
        ],),),),),
      );
  }
}
