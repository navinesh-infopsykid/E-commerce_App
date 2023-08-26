import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formfield = GlobalKey<FormState>();
  final emailcontrol = TextEditingController();
  final passcontrol = TextEditingController();
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formpage"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
        child: Form(
          child: Column(
            children: [
              Image.asset(
                "assets/images/1.jpg",
                height: 50,
                width: 50,
              ),
              SizedBox(height: 50),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: passcontrol,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person)
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailcontrol,
                decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: passcontrol,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  suffix: InkWell(
                    onTap: (){

                      setState(() {
                        passToggle = !passToggle;
                      });
                    },
                    child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),
                  )
                ),
              ),
              SizedBox(height: 60),
              InkWell()
            ],
          ),
        )
      ),
    );
  }
}

class Formstate {
}
