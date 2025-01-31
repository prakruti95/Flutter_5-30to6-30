import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud123/productviewscreen.dart';
class UpdateScreen extends StatefulWidget
{
    var id;
    var pname;
    var price;
    var pdes;

    UpdateScreen({required this.id,required this.pname,required this.price,required this.pdes});


  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen>
{
  TextEditingController pname1 = TextEditingController();
  TextEditingController price1 = TextEditingController();
  TextEditingController pdes1 = TextEditingController();
  var id;
  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();
    id = widget.id;
    pname1.text=widget.pname;
    price1.text=widget.price;
    pdes1.text=widget.pdes;
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Edit Screen"),backgroundColor: Colors.blueGrey

      ),
      body: Container
        (
        margin:EdgeInsets.all(20.0),
        padding: EdgeInsets.all(10.0),
        child: Column
          (
          children:
          [

            SizedBox(height: 20,),
            SizedBox(height: 20,),
            TextField
              (
                controller: pname1,

                decoration: InputDecoration
                  (
                  hintText: "Enter Product Name",
                  enabledBorder: const OutlineInputBorder
                    (
                    borderSide: const BorderSide
                      (
                      color: Colors.blue,
                      width: 3.0,


                    ),

                  ),
                  focusedBorder: OutlineInputBorder
                    (
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(width: 1,color: Colors.orange),
                  ),
                )
            ),
            SizedBox(height: 10,),
            TextField
              (
                controller: price1,
                decoration: InputDecoration
                  (
                  hintText: "Enter Product Price",
                  enabledBorder: const OutlineInputBorder
                    (
                    borderSide: const BorderSide
                      (
                      color: Colors.blue,
                      width: 3.0,


                    ),

                  ),
                  focusedBorder: OutlineInputBorder
                    (
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(width: 1,color: Colors.orange),
                  ),
                )
            ),
            SizedBox(height: 10,),
            TextField
              (
                controller: pdes1,
                decoration: InputDecoration
                  (
                  hintText: "Enter Product Description",

                  enabledBorder: const OutlineInputBorder
                    (
                    borderSide: const BorderSide
                      (
                      color: Colors.blue,
                      width: 3.0,


                    ),

                  ),
                  focusedBorder: OutlineInputBorder
                    (
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(width: 1,color: Colors.orange),
                  ),
                )
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
              update();
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ProductViewScreen()));

            }, child: Text("Update")),


          ],
        ),
      ),
    );
  }

  void update()
  {
    var url = Uri.parse("https://prakrutitech.buzz/Fluttertestapi/productupdate.php");
    http.post(url,body:
    {
      "id": id,
      "product_name" : pname1.text.toString(),
      "product_price" : price1.text.toString(),
      "product_description" : pdes1.text.toString()
    });
  }

}
