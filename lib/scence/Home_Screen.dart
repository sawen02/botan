import 'package:flutter/material.dart';
import '../Widgets/Home_App_Bar.dart';
import '../Widgets/Home_Bottom_Bar.dart';
import '../Widgets/Post_Screen.dart';
import '../Widgets/Post_App_Bar.dart';

class HomePage extends StatelessWidget {
  var category = [
    "Nice Places",
    "Most Visited",
    "Favorites",
    "New Added",
    "Hotels",
    "Restaurants",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      endDrawerEnableOpenDragGesture:
          false, // This line prevents the default drawer open gesture
      appBar: PreferredSize(
        
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
        
      ),
      
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PostScreen(),
                                ));
                          },
                          child: Container(
                            width: 160,
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "images/city${index + 1}.jpeg"),
                                  fit: BoxFit.cover,
                                  opacity: 0.7,
                                )),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.bookmark_border_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "City Name",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      for (int i = 0; i < 6; i++)
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: Text(
                            category[i],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PostScreen(),
                                  ));
                            },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "images/city${index + 1}.jpeg"),
                                  fit: BoxFit.cover,
                                  opacity: 0.8,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "City Name",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.more_vert,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  })
            ]),
          ),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
              
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Notfication'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
           
          ],
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
    
  }
}
class DataSearch extends SearchDelegate{
  
  
  List cityname=[
    'hawler',
    'slemani',
    'dhok',
    'karkuk'
  ];
   
  List? filterlist;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(onPressed:(){
        query = "";
      }, icon:Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed:(){
      close(context, null);}, icon:Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Result $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == ""){
      return ListView.builder(
          itemCount: cityname.length,
          itemBuilder: (context,i){
            return InkWell(
              onTap: (){
                showResults(context);
              },
              child:Card(
                  child:Padding( padding:const EdgeInsets.all(18.0),
                    child: Text("${filterlist![i]}",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
                  
            );
          }) ;
           
    }
    else{
      filterlist=cityname.where((element) => element.startsWith(query)).toList();
      return ListView.builder(
          itemCount: filterlist!.length,
          itemBuilder: (context,i){
            return InkWell(
              onTap: (){
                showResults(context);
              },
              child:Card(
                  child:Padding(padding:  const EdgeInsets.all(18.0),
                    child: Text("${cityname[i]}",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
            );
          }) ;

    }
  }
}
