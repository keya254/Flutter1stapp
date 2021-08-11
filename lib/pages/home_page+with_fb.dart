import 'package:flutter/material.dart';
import 'package:one/widgets/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:one/utils/constants.dart';

class HomePageFB extends StatefulWidget {
   static const String routeName = "/homefb";
  @override
  _HomePageFBState createState() => _HomePageFBState();
}

class _HomePageFBState extends State<HomePageFB> {
  // var myText = "change my name bwana";
  // TextEditingController _nameController = TextEditingController();

  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    return data;

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("App trial"),
        actions: [
          IconButton(icon:Icon(Icons.exit_to_app),
          onPressed:(){
            Constants.prefs!.setBool('loggedIn', false);
            Navigator.pop(context);
          } ,)
        ],
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (  context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            return Center
            (child: Text("Fetch something"),
            );
            case ConnectionState.active:
            case ConnectionState.waiting:              
            return Center(
              child: CircularProgressIndicator(),
            );
            case ConnectionState.done:
            if (!snapshot.hasError){
              return Center
            (child: Text("Some Error occured"),
            );
            }
           return ListView.builder(
        itemBuilder: (context,index){
          return ListTile(
            title: Text(data[index] ["title"]),
            subtitle: Text("ID: ${data[index]["id"]}"),
            leading: Image.network(data[index]["url"]),
          );
        },
        itemCount: data.length,
      

        
        );
          }
          
        },
        
      ),
      drawer: myDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //   myText = _nameController.text;
         // setState(() {});
        },
        child: Icon(Icons.navigation),
      ),
    );
  }
}
