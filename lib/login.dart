import 'package:flutter/material.dart';
import 'package:login_ui/Pagetwo.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Lottie.asset('images/animation.json' , width: double.infinity , height: 400),
              Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,

                  fontSize: 40.0,
                  color: Colors.white,



                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'please sign in to continue . ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                onFieldSubmitted: (value)
                {
                  print(value);
                },
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),

                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  labelText: 'EMAIL',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  prefix: Icon(
                    Icons.email_sharp,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )
                ),

              ),
              SizedBox(
                height:20.0 ,
              ),
              TextFormField(
                onFieldSubmitted: (value )
                {
                  print(value);
                },
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),

                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  labelText: 'password',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),

                  prefix: Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),

            Center(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return Two();
                  }));
                },
                child: Text(
                  'LOGIN'
                ),
                textColor: Colors.black,
                color: Colors.cyanAccent,
                padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
              ),
            ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: TextButton(
                    onPressed: (){},
                    child: Text(

                      'Forgot Password ?',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                      ),
                    ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                    Text(
                      'Don\'t have an account ?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),

                    ),
                    TextButton(
                        onPressed: (){},
                        child:Text(
                          'sign up',
                          style: TextStyle(
                            color: Colors.cyanAccent,
                          ),
                        ) ,
                    ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
