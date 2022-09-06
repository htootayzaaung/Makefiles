//Include Guards BELOW!
//They are simply a series of pre-processor directives that guarantees the file will only be include once!

#ifndef _ACCOUNT_H_           //"#ifndef" reads "If not defined"
#define _ACCOUNT_H_           

class Account
{
  private:
    double balance;

  public:
    void set_balance(double bal);
    double get_balance();
};

#endif
