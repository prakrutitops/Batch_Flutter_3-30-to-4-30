Future delayedPrint(int seconds, String msg)
{
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((value) => msg);
}


void main()async
{
    print("Hello");

    await delayedPrint(2, "From").then((status)
    {
      print(status);
    });

    print("Tops");


}