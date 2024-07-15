class Student
{
    //data members,variables

    var id;
    var name;

    //method
    display()
    {
      //String interpolation - $

      print("Your id is $id");
      print("Your name is $name");
    }

}
void main()
{
    //object creation

    var s1 = Student();
    s1.id=101;
    s1.name="abcd";

    //s1.display();

    print("Your id is ${s1.id}");

}
