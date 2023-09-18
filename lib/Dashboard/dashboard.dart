import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Dashboard'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/stock/R6Background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                    child: ListView.builder(
                        itemCount: listName.length,
                    itemBuilder:(context, index){
                          return Padding(
                            padding:  EdgeInsets.only(top: 8,bottom: 8),
                            child:Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.tealAccent, width: 3.3), // Teal border
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.teal, Colors.blue], // Replace with your desired gradient colors
                                ),
                              ),
                              height: 100,
                              width: double.infinity,
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                    height: 120,
                                    width: 237,
                                    fit: BoxFit.cover,
                                    image: AssetImage(listImages[index].toString()),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(right: 40),
                                    child: Text(listName[index].toString(),textAlign: TextAlign.center,style: TextStyle(fontSize: 26,fontWeight: FontWeight.w800,color: Colors.white),),
                                  ),
                                ],
                              ),
                            ),
                          );
                    }
                    )
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                            height: 90,
                            image:AssetImage('images/stock/R6bot.jpg')),
                        // Column(mainAxisAlignment: MainAxisAlignment.center,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: [
                        //     Text('PlatForms',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        //     Text('XBOX GAME PASS',style: TextStyle(color: Colors.white),),
                        //     Text('XBOX SERIES X | S',style: TextStyle(color: Colors.white),),
                        //     Text('XBOX ONE',style: TextStyle(color: Colors.white),),
                        //     Text('PLAYSTATION 4',style: TextStyle(color: Colors.white),),
                        //     Text('PLAYSTATION 5',style: TextStyle(color: Colors.white),),
                        //     Text('UBISOFT CONNECT',style: TextStyle(color: Colors.white),),
                        //     Text('AMAZON LUNA',style: TextStyle(color: Colors.white),),
                        //   ],
                        // ),
                        Image(
                            width: 70,
                            height: 70,
                            image:AssetImage('images/stock/18+.png')),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> listName = ['Explore\nMaps', 'Explore\nOperators', 'Learn', 'R6\nExtraction', 'R6\nMobile'];
  List<String> listImages = [
    'images/listimages/exploremaps.png',
    'images/listimages/exploreoprators.png',
    'images/listimages/learn.png',
    'images/listimages/r6extraction.png',
    'images/listimages/r6mobile.png'];
}
