void main()
{

  //1.fixed length

  // List<dynamic> numbersList= [10,20,30,40,50,"a","b","c","d"];
  //
  // //print(numbersList);
  //
  // for(var i in numbersList)
  //   {
  //     print(i);
  //
  //   }

 //2.dynamic changes
  List<dynamic> numbersList=[];

  numbersList.add(10);
  numbersList.add(20);
  numbersList.add(10);
  numbersList.add(20);

  List<dynamic> numbersList2=[];

  numbersList2.add(10);
  numbersList2.add(20);
  numbersList2.add(10);
  numbersList2.add(20);

  numbersList.addAll(numbersList2);
  numbersList.remove(10);//object -name
  numbersList.removeAt(0);//index
  //numbersList.retainWhere((element) => print(element));


  print(numbersList);

  //add,addAll,remove,retain



}