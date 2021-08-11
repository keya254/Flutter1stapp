import 'package:flutter/material.dart';
import 'package:one/pages/home_pages.dart';
import 'package:one/utils/constants.dart';


class LoginPage extends StatefulWidget {
  static const String routeName = "/login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
     body: Stack(
       fit: StackFit.expand ,
       children: [
         Image.asset("assets/image1.jpg", 
         fit: BoxFit.cover,
         color: Colors.black.withOpacity(0.7),
         colorBlendMode: BlendMode.darken ,
         ),
         Center(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: SingleChildScrollView(
        child: Form(
              key: formKey,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: _usernameController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (s){},
                        decoration: InputDecoration(
                            hintText: "Enter Email", labelText: "User Name"),
                      ),
                      SizedBox(height:20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        validator: (s){},
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter password", labelText: "pasword"),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: (){
                          Constants.prefs!.setBool('loggedIn', true);
                        
                          
                          //Navigator.push(
                          //  context, 
                          //  MaterialPageRoute(builder: (context)=> HomePage() )
                          //  );

                          Navigator.pushReplacementNamed(
                            context, HomePage.routeName);
                        },
                         child:Text ("Sign In"),
                        )
                    ],
                  ),
                ),
              ),
        ),
      ),
           ),
         ),
       ],
     ),

    );
  }
}
