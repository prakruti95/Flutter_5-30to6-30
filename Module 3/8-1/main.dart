import 'package:flutter/material.dart';

import 'model.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget
{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  final List<Model> items =
  [
    Model
      (
        image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
        title: 'Samsung',
        subtitle: '50000',
      ),
    Model
      (
      image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
      title: 'Samsung',
      subtitle: '50000',
    ),
    Model
      (
      image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
      title: 'Samsung',
      subtitle: '50000',
    ),
    Model
      (
      image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
      title: 'Samsung',
      subtitle: '50000',
    ),
    Model
      (
      image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
      title: 'Samsung',
      subtitle: '50000',
    ),
    Model
      (
      image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
      title: 'Samsung',
      subtitle: '50000',
    ),
    Model
      (
      image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
      title: 'Samsung',
      subtitle: '50000',
    ),
    Model
      (
      image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
      title: 'Samsung',
      subtitle: '50000',
    ),
    Model
      (
      image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
      title: 'Samsung',
      subtitle: '50000',
    ),
    Model
      (
      image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
      title: 'Samsung',
      subtitle: '50000',
    ),
    Model
      (
      image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
      title: 'Samsung',
      subtitle: '50000',
    ),
    Model
      (
      image: 'https://w7.pngwing.com/pngs/2/872/png-transparent-telephone-samsung-t-mobile-4g-smartphone-samsung-gadget-mobile-phone-mobile-phones.png',
      title: 'Samsung',
      subtitle: '50000',
    ),
  ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Custom List"),),
        body: GridView.builder
          (
            itemBuilder:(BuildContext context, int index)
            {
              return ListTile
                (
                  leading:Image.network(items[index].image),
                  title: Text(items[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle:Text(items[index].subtitle),
                );
            },  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 2, // Space between columns
          mainAxisSpacing: 2, // Space between rows
        ),
            // itemCount:items.length,

            ),
      );
  }
}

