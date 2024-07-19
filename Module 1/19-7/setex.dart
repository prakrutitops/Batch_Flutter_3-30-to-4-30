void main()
{
    Set<dynamic> set = Set();
    Set<dynamic> set2 = Set();

    set.add(1);
    set.add(2);
    set.add(3);
    set.add(4);

    set2.add(10);
    set2.add(20);
    set2.add(3);
    set2.add(4);

    set.addAll(set2);

    print(set);

    //print(data2);
}