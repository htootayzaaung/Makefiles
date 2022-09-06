#include "Account.h"

/*
_"#include" with <> brackets as in "#include <iostream>" is used to include system header files and the compiler knows
 where these are located.

_"#include" with "" tell the compiler to include header files that are local to this project, the compiler also knows
  where those are located.
*/

void Account::set_balance(double bal)
{
  balance = bal;
}

double Account::get_balance()
{
  return balance;
}
