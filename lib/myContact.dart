
import 'package:flutter/material.dart';
import 'package:myapp/items.dart';

class MyContact extends StatefulWidget{
  var listContact;
  MyContact(this.listContact);

  @override
  State<MyContact> createState() => _MyContactState();
}

class _MyContactState extends State<MyContact> {

  var items = Items("name1", "085648718075", "email@gmqilcom", false, true);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(

        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("MyContact"),
              Row(
                children: [
                  Icon(Icons.dark_mode),
                  Switch(
                      value: true,
                      onChanged: null
                  )
                ],
              ),
              IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.white))
            ],
          ),
        ),


        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            for(int i=0;i<widget.listContact.length;i++)
              InkWell(

                onTap: (){
                  setState(() {
                    if(widget.listContact[i].isTap==false){
                      widget.listContact[i].isTap = true;
                    }
                    else
                    {
                      widget.listContact[i].isTap = false;
                    }

                  });

              },
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white,width: 1),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    children: [

                      if (widget.listContact[i].isTap== true)

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(40)
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(widget.listContact[i].phone,style: TextStyle(fontSize: 20)),
                            Text(widget.listContact[i].name,style: TextStyle(fontSize: 20),),
                            Text(widget.listContact[i].email,style: TextStyle(fontSize: 20),),
                          ],
                        ),
                      )
                      else
                        Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                              height: 60,
                              padding: EdgeInsets.only(left: 15,right: 15),
                              width: double.infinity,
                              child: Row(
                              children: [
                              CircleAvatar(backgroundColor: Colors.blueAccent),
                              SizedBox(width: 15),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(widget.listContact[i].name,
                                    style: TextStyle(
                                    fontSize: 16),
                                       ),
                                  ],
                                ),
                              )
                              ],
                            ),
                          ),
                        )
                    ],
                  ),

                ),
              ),

          ],
        ),
      ),
    );
  }
}