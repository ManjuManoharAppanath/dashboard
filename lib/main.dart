import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List li=[Icons.file_copy_outlined,Icons.perm_identity_rounded,
    Icons.food_bank,Icons.shopping_bag,Icons.handyman];
  List tt=['File Manager','Excersize Tips','Food Recipe','Gym','e-Wallet'];
  List tx=['Theme 1 screens','Theme 2 screens','Theme 3 screens','Theme 4 screens','Theme 5 screens'];
  List clr=[Colors.orange,Colors.green,Colors.deepPurple,Colors.blue,Colors.orange];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Text('All in one UI kit'),
    centerTitle: true,
    actions: [IconButton(onPressed: (){}, icon: Icon(Icons.toggle_off))],
    ),
      body:
      SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(childAspectRatio: 15/25,
              shrinkWrap: true,
              crossAxisCount:2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent,
                ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone,size: 50,),
                      SizedBox(height: 10,),
                      Text('Dafault Theme'),
                    ],
                  ),
                ),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.app_settings_alt,size: 50,),
                      SizedBox(height: 10,),
                      Text('Full apps'),
                    ],
                  ),
                ),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.signal_wifi_connected_no_internet_4_outlined),
                      SizedBox(height: 10,),
                      Text('Integration'),
                    ],
                  ),
                ),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.orange,
                ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dashboard),
                      SizedBox(height: 10,),
                      Text('Dashboard'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text('Themes',style: TextStyle(fontSize: 18),),
          ListView.builder(
              shrinkWrap: true,
              itemCount: li.length,itemBuilder: (BuildContext context,int i)
          {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(scrollDirection:Axis.horizontal,
                child: Row(
                  children: [
                  Container(height: 100,
                    width: 100,
                    color: clr[i],
                  child: Icon(li[i]),
                  ),
                    SizedBox(width: 20),
                    Container(
                      height: 100,
                      width: 900,
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30,),
                            Text(tt[i],style: TextStyle(fontSize:15),),
                            Text(tx[i]),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 600),
                            child: FloatingActionButton(backgroundColor: clr[i],
                              onPressed: (){},child: Icon(Icons.arrow_forward_ios_sharp,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          ),
        ],
        ),
      ),
    ),);
  }
}
