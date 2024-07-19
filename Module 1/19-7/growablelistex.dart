void main()
{

    var data = [];

    data.add(10);
    data.add(20);
    data.add(30);



    var data2 = [];
    data2.add(10);
    data2.add(20);
    data2.add(30);

    data.addAll(data2);
    data.removeAt(5);

    //data2.re

    print(data);

}