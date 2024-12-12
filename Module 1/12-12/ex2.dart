void main()
{
  int geek = 10;

  try
  {
    var geek2 = geek ~/ 2;//10/0
    print(geek2);
  }
  catch(e)
  {
    print(e);
  }
  finally
  {
    print("a");
  }



  // try
  // {
  //
  // }
  // catch(e)
  // {
  //   print(e);
  // }

}
