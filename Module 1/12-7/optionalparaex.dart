getdetail(String fname,[var lname,var email])
{
    print("-------------------");
    print("Your Firstname is $fname");
    print("Your Lastname is $lname");
    print("Your Email is $email");
}
void main()
{

  getdetail("a");
  getdetail("c", "d");
  getdetail("p", "q", "p@gmail.com");

}