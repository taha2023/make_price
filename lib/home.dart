import 'package:flutter/material.dart';
import 'package:make_price/sqldb.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  SqlDb sqlDb = SqlDb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('HomePage'),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: 20,
              height: 20,
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () async{
                 int response = await sqlDb.insertData("INSERT INTO 'notes' ('note') VALUES('note one')");
                 print(response) ;
                },
                child: Text("Insert Data"),
                
                ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
           Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () async{
                   List <Map> response = await sqlDb.readData("SELECT * FROM 'notes' ");
                   print("$response");
                },
                child: Text("Read Data"),

              ),
           ),
           SizedBox(
              width: 20,
              height: 20,
            ),
           Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () async{
                   int response = await sqlDb.deletData("DELET * FROM 'notes' WHERE id = 8");
                   print("$response");
                },
                child: Text("Delet Data"),

              ),
           ),
           SizedBox(
              width: 20,
              height: 20,
            ),
           Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () async{
                   int response = await sqlDb.UpdateData("UPDATE 'notes' SET 'note' = 'note six' where id = 6");
                   print("$response");
                },
                child: Text("UPDATE Data"),

              ),
           ),

          ],
          ),
      ),
    );
  }
}