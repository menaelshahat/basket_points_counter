import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },

          icon: Icon(
            Icons.arrow_back,
            size: 30.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children:
            [
              Center(
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(
                height: 15.0,
              ),

              Text(
                'please fill the input below here',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 60.0,
              ),

              TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.grey
                    ),
                  ),
                  prefix: Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                  ),
                  labelText: 'FULL NAME',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  labelText: 'PHONE',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  prefix: Icon(
                    Icons.phone_android_outlined,
                    color: Colors.white,
                  )
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    prefix: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    )
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
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
                  suffix: Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                  ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    prefix: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    )
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    labelText: ' CONFIRM PASSWORD',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    prefix: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    )
                ),
              ),
              SizedBox(
                height: 60,
              ),
              MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Colors.cyanAccent,
                  onPressed: (){},
                child: Text(
                  'SIGN UP',
                ),
                textColor: Colors.black,

              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  Text(
                    'Already have a account ? ',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.cyanAccent
                        ),
                      ),
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
