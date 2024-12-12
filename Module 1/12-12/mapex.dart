import 'dart:ffi';

void main()
{
  var m = Map<int,String>();
  m.putIfAbsent(101, () => "xyz");
  m.putIfAbsent(102, () => "abcd");

  print(m);
}