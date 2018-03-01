// Allen ISD Computer Science Assignment
// More Functions
// John Nguyen
// Computer Science II, Period 6
// 2018.02.09

/********************************************************************************
As always, READ ALL INSTRUCTIONS!!!

Throughout this lab (and all future labs) PAY CLOSE ATTENTION to the names
you select for functions, parameters, variables, and constants.

In this lab you MAY NOT USE ANY BUILT-IN FUNCTION other than the basic operators:
+, -, *, /, %, =, compound assignment operators, and relational operators.

********************************************************************************/

/********************************************************************************
( 1) Define a function which accepts an integer argument and returns an integer 
     twice as large.
     ********************************************************************************/
public func twiceInteger(int: Int) -> Int {
        return int+int
    }


/********************************************************************************
( 2) Define a function which accepts an integer argument and returns an integer 
     five times as large.
********************************************************************************/

public func fiveInteger(int: Int) -> Int {
        return int+int+int+int+int
    }


/********************************************************************************
( 3) Define a function which accepts an integer argument and returns an integer 
     ten times as large. The function MAY NOT USE any constant literals.
********************************************************************************/


public func tenInteger(int: Int) -> Int {
        return int + int + int + int + int + int + int + int + int + int
    }
 
/********************************************************************************
( 4) Define a function which accepts a double argument and returns an integer 
     such that the integer returned is the greatest integer that is less than or 
     equal to the argument (aka floor).
********************************************************************************/

public func floor(double: Double) -> Int {
        return Int(double);
    }

/********************************************************************************
( 5) Define a function which accepts a double argument and returns an integer
     such that the integer returned is the least integer that is greater than or
     equal to the argument (aka ceiling).
********************************************************************************/

public func ceiling(double: Double) -> Int {
        if(double - Double(Int(double)) > 0.0) {
            return Int(double)+1;
        }
        return Int(double);
    }
  
/********************************************************************************
( 6) Define a function which accepts a string argument and returns a string
     such that the string returned repeats the original string twice.
********************************************************************************/  

public func doubleString(string:String) -> String {
        return string + string;
    }


/********************************************************************************
( 7) Define a function which accepts two arguments.  The first is a string and
     the second is an integer indicating the  number of times to repeat that string.  
     The returned value is a string which is repeated the specified number of times.
********************************************************************************/  


public func repeatString(string:String, times:Int) -> String {
        var returnString = ""
        for _ in 1...times {
                returnString += string
            }
        return returnString; 
    }

/********************************************************************************
( 8) Define a function which accepts an integer argument and returns a string
     such that the string returned contains the integer value, e.g. given
     123 the function returns "123".
********************************************************************************/

public func intToString(int:Int) -> String {
        return String(int);
    }

/********************************************************************************
( 9) Define a function which accepts a double argument and returns a string
     such that the string returned contains the double value, e.g. given
     123.45 the function returns "123.45".
********************************************************************************/

public func doubleToString(double:Double) -> String {
        return String(double);
    }



/********************************************************************************
(10) Define a function which accepts an integer argument and returns an integer
     such that the integer is the factorial of the argument.
     The function should print each step of calculation.
********************************************************************************/

public func returnFactorial(int:Int) -> Int {
        // the product of an integer and all the integers below it; e.g., factorial four ( 4! ) is equal to 24.
        var total = 1;
        for i in 1...int  {
            print("Multipling: \(int) by  \(i)")
            print("Total: \(total)")
            total *= i 
        }
        return total;
    }


/********************************************************************************
(11) Define a function which accepts an integer argument and returns an integer
     such that the integer is the nth integer of the Fibonacci sequence, i.e.
     specifying 0 yields 0, specifying 1 yields 1, specifying 2 yields 1, etc.
     The function should print each step of the calculation.
********************************************************************************/

public func gucci(nth:Int) -> Int {
        print(nth)
        if (nth <= 1) { return nth; }
        return gucci(nth: nth-1) + gucci(nth: nth-2); 
    }
  
    
/********************************************************************************
(12) Define a function which accepts two double arguments representing the length
     of the sides of a right triangle and returns a double such that the double
     is the sum of each of the sides squared.
********************************************************************************/

public func rightTriangle(sideA:Double, sideB:Double) -> Double {
        return sideA*sideA + sideB*sideB;
    }


/********************************************************************************
(13) Define a function which accepts an integer argument and returns a boolean
     value such that the boolean is true if and only if the argument is prime.
********************************************************************************/

public func isPrime(int: Int ) -> Bool {
        if (int <= 1) { return false; } 
        for i in 2..<int {
            if (int % i == 0) {return false};
        }
        return true; 
    }


/********************************************************************************
(14) Define a function which accepts an integer argument and returns the count
     of prime numbers less than or equal to the argument.
     The function should print each such prime number found.
********************************************************************************/  
  
public func countPrimes(int:Int) -> Int {
        var count = 0
        for i in 0...int {
            if(isPrime(int:i)) { print("\(i) is prime!"); count += 1; }
            print("\(i) is NOT prime!");
        }
        return count;
    }  
