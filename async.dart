void main() async {
  dynamic retvalue = asyncFunction();
  print("Value = $retvalue, Type= ${retvalue.runtimeType}");
  retvalue = await asyncFunction();
  print("Value = $retvalue}");
  print("Value = $retvalue, Type= ${retvalue.runtimeType}");
}

Future asyncFunction() async {
  //Demo function for a long running function in another thread like API call.
  await Future.delayed(Duration(seconds: 10));
  return 'Return from Async Function';
}
