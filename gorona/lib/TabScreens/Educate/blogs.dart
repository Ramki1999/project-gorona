import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class Blogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(child: Center(child: Container(color: Colors.yellow[50],padding: const EdgeInsets.all(20),child: Column(children: <Widget>[
          Text("BLOGS",style: TextStyle(color: Colors.redAccent[700],fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Container(
                  child: Column(
                children: <Widget>[
                  GestureDetector(
                                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return WebviewScaffold(
                              url:  'https://www.engineering.com/Blogs/tabid/3207/ArticleID/16282/Ownership-Is-SO-Overrated-Products-as-a-Service.aspx',
                            );
                    }, 
                        ));},
                    // onTap: () => WebviewScaffold(url: "https://www.engineering.com/Blogs/tabid/3207/ArticleID/16282/Ownership-Is-SO-Overrated-Products-as-a-Service.aspx",),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          'https://res.cloudinary.com/engineering-com/image/upload/w_640,h_640,c_limit,q_auto,f_auto/image001_xu6ttf.jpg',
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        )),
                  ),
                    Text("Ownership Is SO Overrated. Products as a Service.",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 2,),
                    Text("Renting products, being termed 'products as a service,' makes increasing sense for manufacturers. Consumers will end up paying more over the long run, and it will change the way products are designed.",maxLines: 2,),
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
                              url:  'https://www.engineering.com/Blogs/tabid/3207/ArticleID/15801/AI-Taking-Your-Job-Relax-It-Cant-Even-Pour-You-a-Drink.aspx',
                            );
                    }, 
                        ));},
                    // onTap: () => WebviewScaffold(url: "https://www.engineering.com/Blogs/tabid/3207/ArticleID/15801/AI-Taking-Your-Job-Relax-It-Cant-Even-Pour-You-a-Drink.aspx",),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          'https://res.cloudinary.com/engineering-com/image/fetch/w_200,h_150,f_jpg,c_fill,q_auto:low,g_faces:center/http://www.engineering.com/Portals/0/BlogFiles/SNAG-0273.jpg',
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        )),
                  ),
                    Text("AI Taking Your Job? Relax. It Can't Even Pour You a Drink.",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 2,),
                    Text("Quick with a joke or a light of your smoke. That's not AI. Not yet.Michael Sheen plays the perfect bartender in Passengers, a sci flick. He is as chatty as he needs to be as he makes the perfect cocktail for his guests, two of them that wake up prematurely on an interstellar voyage.",maxLines: 2,),
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
                    // onTap: () => WebviewScaffold(url: "https://www.engineering.com/Blogs/tabid/3207/ArticleID/15656/IP-Never-Heard-of-It-How-Do-You-Spell-That.aspx",),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          'https://res.cloudinary.com/engineering-com/image/upload/w_350,c_limit,q_auto,f_auto/china_d3ottp.jpg',
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        )),
                  ),
                    Text("IP? Never Heard of It. How Do You Spell That? ",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 2,),
                    Text("As only China can do, there is a tremendous amount of engineering talent supplied at low cost in the country. Combined with the lower cost of materials and manufacturing",maxLines: 2,),
                ],
              ))
        ],),),),),
      );
  }
}
