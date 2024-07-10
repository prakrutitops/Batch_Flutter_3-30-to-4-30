void main()
{
    int num = 5786;

    var max = 0;//8

    while(num>0)
    {
        int num2 = num % 10;//7
        if(num2>max)
        {
            max = num2;
        }
        num = num~/10;
    }
    print("Your Max num is $max");

}