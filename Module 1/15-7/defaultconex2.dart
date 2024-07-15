class Account
{
    static int count = 0;

    Account()
    {
        count++;
        print(count);
    }
}
void main()
{

    var a1 = Account();
    var a2 = Account();
    var a3 = Account();
}