class Model
{
    late int _id;
    late String _name;

    //get & set

    int get id => _id;

    set id(int value)
    {
        _id = value;
    }

    String get name => _name;

    set name(String value)
    {
        _name = value;
    }
}