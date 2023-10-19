import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class LOg extends StatefulWidget {
  const LOg({super.key});

  @override
  State<LOg> createState() => _LOgState();
}

class _LOgState extends State<LOg> {
  final _formfield=GlobalKey<FormState>();
  final emailconttroller=TextEditingController();
  final passwordconttroller=TextEditingController();
  bool passtoggle=true;
//  final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                TextFormField(
                  controller: emailconttroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    hintText: 'Pleaseenter your email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.mail),
                    
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'enter email';
                    }
                    final emailRegex = RegExp(r'^.+@[a-zA-Z]+\.[a-zA-Z]+$').hasMatch(value);
                    if(!emailRegex){
                      return 'Enter valid email';
                    }
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: passwordconttroller,
                  obscureText: !passtoggle,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text("password"),
                    hintText: 'Pleaseenter your password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_rounded),
                    suffixIcon: IconButton(icon: Icon(passtoggle
                        ?Icons.visibility:Icons.visibility_off,),
                        onPressed:(){
                        setState(() {
                          passtoggle=!passtoggle;
                        });
                        }) ,
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    if(_formfield.currentState!.validate()){
                      print('success');
                    
                    }
                  },
                  child:Container(
                    height: 50,
                    width: MediaQuery.sizeOf(context).width/2,
                    decoration: BoxDecoration(
                      color: customviolet,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text("Login")),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
