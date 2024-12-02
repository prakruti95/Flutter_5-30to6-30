class Customer2
{
   static int count=0;

   Customer2()
    {
        count++;
        print(count);
    }

}
void main()
{
  var c1 = Customer2();
  var c2 = Customer2();
  var c3 = Customer2();
  var c4 = Customer2();
}