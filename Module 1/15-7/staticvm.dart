class Student
{
  var id;
  var name;
  static var college="VVP";
  
  Student(var id,var name)
  {
      this.id=id;
      this.name=name;
  }

  void dispaly()
  {
    print("Your id is $id");
    print("Your name is $name");
    print("Your college is $college");
  }

  static void change()
  {
    college="Atmiya";
  }
}
void main()
{
  var s1 = Student(101, "a");
  var s2 = Student(102, "b");

  Student.change();//without object call

  s1.dispaly();
  s2.dispaly();
}