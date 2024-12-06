class RBI
{
    int roi()
    {
      return 0;
    }
}
class SBI extends RBI
{
  int roi()
  {
    return 7;
  }
}
class ICICI extends RBI
{
  int roi()
  {
    return 8;
  }
}
class AXIS extends RBI
{
  int roi()
  {
    return 9;
  }
}
void main()
{
    //refrence variables
   var r = RBI();

   r = SBI();
   print(r.roi());

   r = ICICI();
   print(r.roi());

   r = AXIS();
   print(r.roi());

   

}