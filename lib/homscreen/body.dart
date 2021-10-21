import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 */



class Body extends StatelessWidget {
  final imageList = [
    'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__480.jpg',
    'https://cdn.pixabay.com/photo/2016/11/20/09/06/bowl-1842294__480.jpg',
    'https://cdn.pixabay.com/photo/2017/01/03/11/33/pizza-1949183__480.jpg',
    'https://cdn.pixabay.com/photo/2017/02/03/03/54/burger-2034433__480.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          elevation: 0,
      ),
      drawer:Container(width:300,color:Colors.white,child: ListView(children:
      [
        SizedBox(height: 200,),
        Divider(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text('Profie'),

        ),
        Divider(height: 10,)

      ],)),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        Center(child: Image.asset('assets/images/divider.png')),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.indigo,
                  ),
                  child: Swiper(
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                          Expanded(
                            child: Container(
                              width:MediaQuery.of(context).size.width*0.90,
                              height: 200,
                              child: Image.network(
                              imageList[index],
                                fit: BoxFit.cover,
                               ),
                            ),
                          )

                            ],
                          ),

                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Photos"
                  ,style: TextStyle(color: Colors.white,fontSize: 22)
                  ),
                  Spacer(),
                  FlatButton(
                    child: Text("...",style: TextStyle(color: Colors.white,fontSize: 30),),
                    onPressed: () {},
                  ),
                ],
              ),

            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 150.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage( imageList[0])),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage( imageList[1])),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage( imageList[2])),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage( imageList[3])),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),





                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: <Widget>[
                  Text(
                      "Videos"
                      ,style: TextStyle(color: Colors.white,fontSize: 22)
                  ),
                  Spacer(),
                  FlatButton(
                    child: Text("...",style: TextStyle(color: Colors.white,fontSize: 30),),
                    onPressed: () {},
                  ),
                ],
              ),

            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 150.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage( imageList[0])),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage( imageList[1])),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage( imageList[2])),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage( imageList[3])),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),





                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




