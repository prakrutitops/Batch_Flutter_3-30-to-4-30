class Student
{
    var id;
    var name;


    Student(var i,var n)
    {
        //this is a refrence keyword
        // id=i;
        // name=n;
        this.id =id;
        this.name=name;
    }

    void display()
    {
      print("Your id is $id");
      print("Your name is $name");

    }
}
void main()
{
    var s1 = Student(101,"a");
    var s2 = Student(102,"b");

    s1.display();
    s2.display();


}