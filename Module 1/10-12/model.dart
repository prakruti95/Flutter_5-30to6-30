class Model
{
  //late keyword will used when you don't want to assign default value

  late int _id;
  late String _name;

     set id(int value)
     {
       _id = value;
     }


     int get id => _id;


     String get name => _name;

    set name(String value)
    {
      _name = value;
    }


}