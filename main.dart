
import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, 
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 70.0),
              new Image.asset("lib/Group75.png", width: 180.0,),
              SizedBox(height: 40.0),
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  
                   Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => _LoginPageState ())
                  );
                  
                },
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  minimumSize: Size(
                    double.infinity,
                    0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              TextButton(
                onPressed: () {
                },
                child: Text(
                  'Lupa Kata Sandi?',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginPageState extends StatefulWidget{
  @override
  State<_LoginPageState> createState() => Page1();
}

class Page1 extends State<_LoginPageState> 
{
  TextEditingController conBil1=TextEditingController();
  TextEditingController conBil2=TextEditingController();
  TextEditingController conHasil=TextEditingController();
        @override 
        Widget build(BuildContext context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
              backgroundColor: Colors.orangeAccent,
              title: Text('Kalkulator'),
              actions: <Widget>[
              IconButton(
              icon: Icon(Icons.group),
              onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DataKelompokPage()),
              );
              },
              ),
              IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginApp()),
              );
              },
              ),
              ],
          ),
              resizeToAvoidBottomInset: false,
                body: Center(
              child: Padding(
                padding: EdgeInsets.all(40.0),
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    SizedBox(height: 0.0),
                    Text(
                      'Aritmatika',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(height: 18.0),
                    Padding(
                      padding: EdgeInsets.all(2),
                    child: TextField(
                      controller: conBil1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintText: "Masukkan Bilangan 1",
                      ),
                    ),
                    ),
                    SizedBox(height: 8.0),
                    Padding(
                      padding: EdgeInsets.all(2),
                    child: TextField(
                      controller: conBil2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintText: "Masukkan Bilangan 2",
                      ),
                    ),
                    ),
                    SizedBox(height: 8.0),
                    Padding(
                      padding: EdgeInsets.all(2),
                    child: TextField(
                      controller: conHasil,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintText: "Bilangan hasil",
                      ),
                    ),
                    ),
                    SizedBox(height: 17.0),
                    ElevatedButton(
                      onPressed: (){
                        setState((){
                          operasiAritmatika("+");
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        minimumSize: Size(
                          double.infinity,
                          0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                  child: Text(
                        'Penjumlahan',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: (){
                        setState((){
                          operasiAritmatika("-");
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        minimumSize: Size(
                          double.infinity,
                          0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    child: Text(
                        'Pengurangan',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: (){
                        setState((){
                          operasiAritmatika("/");
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        minimumSize: Size(
                          double.infinity,
                          0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                  child: Text(
                        'Pembagian',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                     SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: (){
                        setState((){
                          operasiAritmatika("*");
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        minimumSize: Size(
                          double.infinity,
                          0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                  child: Text(
                        'Perkalian',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    ],
                ),
               
              )
              )
              )
          );
        }

    void operasiAritmatika(String jenisOperasi){
        double Bil1=double.parse(conBil1.text);
        double Bil2=double.parse(conBil2.text);
        double hasil=0;
        if(jenisOperasi=="+"){
          hasil = Bil1 + Bil2;
        } else if (jenisOperasi == "-"){
          hasil = Bil1 - Bil2;
        } else if(jenisOperasi == "/"){
          hasil = Bil1/Bil2;
        } else if (jenisOperasi == "*"){
          hasil = Bil1 * Bil2;
        }
        conHasil.text = hasil.toString();
      }
}

class DataKelompokPage extends StatelessWidget {
 @override
Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
    backgroundColor: Colors.orangeAccent,
    title: Text('Data Kelompok'),
    ),
    body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Image.asset("lib/Woman4.png", width: 120.0,),
             SizedBox(height: 15.0),
          Text(
            'Mutiara Hasna',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
            SizedBox(height: 5.0),
          Text(
            '124210029',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal
            ),
          ),
          SizedBox(height: 40.0),
          new Image.asset("lib/Woman4.png", width: 120.0,),
           SizedBox(height: 15.0),
          Text(
            'Fauzizah Fitria Rizqi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
             SizedBox(height: 5.0),
          Text(
            '124210047',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal
            ),
          )
        ],
       ),
      ),
    );
  }
}
