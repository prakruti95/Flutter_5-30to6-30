import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main()
{
  runApp(MaterialApp(home:UploadImage()));
}
class UploadImage extends StatefulWidget
{
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage>
{
  TextEditingController _name = TextEditingController();
  TextEditingController _price = TextEditingController();
  TextEditingController _des = TextEditingController();
  TextEditingController _status = TextEditingController();
  File _imageFile = File("");

  Future<void> _uploadData() async
  {
    try
    {
      //link
      var url = Uri.parse('https://prakrutitech.buzz/Rahul/insert.php');

     //data sent
      var request = http.MultipartRequest('POST', url)
        ..fields['pname'] = _name.text.toString()
        ..fields['pprice'] = _price.text.toString()
        ..fields['pdesc'] = _des.text.toString()
        ..fields['pstatus'] = _status.text.toString()
        ..files.add(await http.MultipartFile.fromPath('pimage', _imageFile.path));

      // Send the request
      var response = await request.send();

      if(response.statusCode==200)
      {
        print('Data uploaded successfully');
      }
      else
      {
          print('Failed to upload data. Error: ${response.statusCode}');
      }

    }
    catch(e)
    {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Upload Image and Data"),),
        body: Center
          (
            child: Column
              (
                children:
                [

                  TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      labelText: 'Enter Product Name',
                    ),
                  ),
                  SizedBox(height: 20),

                  TextField(
                    controller: _price,
                    decoration: InputDecoration(
                      labelText: 'Enter Product Price',
                    ),
                  ),
                  SizedBox(height: 20),

                  TextField(
                    controller: _des,
                    decoration: InputDecoration(
                      labelText: 'Enter Product Description',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _status,
                    decoration: InputDecoration(
                      labelText: 'Enter Product Status',
                    ),
                  ),
                  SizedBox(height: 20),


                  ElevatedButton
                    (
                    onPressed: _pickImage,
                    child: Text('Choose Image'),
                    ),
                  SizedBox(height: 20),

                  ElevatedButton
                    (
                    onPressed: _imageFile != null ? _uploadData : null,
                    child: Text('Upload Data'),
                  ),


                ],
              ),
          ),
      );
  }

  void _pickImage()async
  {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if(pickedFile!=null)
    {
      setState(()
      {
        _imageFile = File(pickedFile.path);
      });
    }
  }
}
