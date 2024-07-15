class Tops
{
    var fname,lname,email;

    // Tops(var fname,[var lname,var email])
    // {
    //   print("Your Firstname is $fname");
    //   print("Your Lastname is $lname");
    //   print("Your Email is $email");
    // }

  Tops(var fname)
  {
    print("Your Firstname is $fname");
  }

  Tops.a(var fname,var lname)
  {
      print("Your Firstname is $fname");
      print("Your Lastname is $lname");
  }

  Tops.b(var fname,var lname,var email)
  {
      print("Your Firstname is $fname");
      print("Your Lastname is $lname");
      print("Your Email is $email");
  }

}
void main()
{

  var t1 = Tops("shruti");
  var t2 = Tops.a("sujal","khunt");
  var t3 = Tops.b("dhaval","xyz","d@gmail.com");
}