import 'package:flutter/material.dart';
import 'package:jsoncrud123/login.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud123/productviewscreen.dart';

class DashBoard extends StatefulWidget
{
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashBoard>
{
  TextEditingController pname = TextEditingController();
  TextEditingController pprice = TextEditingController();
  TextEditingController pdes = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Add Products"),backgroundColor: Colors.blueGrey

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
            Text("Add Product Details",style: TextStyle(fontSize: 30.00),),
            SizedBox(height: 20,),
            TextField
              (
                controller: pname,
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
                controller: pprice,
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
                controller: pdes,
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
              addproduct();
              pname.clear();
              pprice.clear();
              pdes.clear();

              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ProductViewScreen()));

            }, child: Text("Add Product")),


          ],
        ),
      ),
    );
  }

  addproduct()
  {
    var url = Uri.parse("https://prakrutitech.buzz/Fluttertestapi/productinsert.php");
    http.post(url,body:
    {
      "product_name" : pname.text.toString(),
      "product_price" : pprice.text.toString(),
      "product_description" : pdes.text.toString()
    });
  }
}
