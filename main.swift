// Allen ISD Computer Science Assignment
// More Functions Test Harness
// John Nguyen
// Computer Science II, Period 6
// 2018.02.09

import myFunctions

/********************************************************************************
As always, READ ALL INSTRUCTIONS!!!

Throughout this lab (and all future labs) PAY CLOSE ATTENTION to the names
you select for functions, parameters, variables, and constants.

There are two parts to this lab.  
1.  You'll create a "library" which will contain all of the functions in your
    more-functions.swift file.  This library can then be used by multiple 
    programs.

2.  You'll create a "test-harness", a framework to be used for testing the 
    functions in your more-functions.swift file.
    

Steps to follow:
1.  Be sure that you completed your "more-functions" lab.

2.  Copy your more-functions.swift file into this directory.  
    If you're in the more-functions-test-harness directory, you may execute:
    cp ../more-functions/more-functions.swift .

3.  In order for your functions to be visible in your library, you need to 
    mark them as "public".  Simply precede the "func" keyword with the 
    word "public".

4.  Build your more-functions.swift file into a library.  You may execute:
    ./makeLibrary.sh

    This will create three files:
    * libmyFunctions.so is the "shared object" file containing your functions
      This file is loaded dynamically at runtime.
    * myFunctions.swiftdoc is a file containing documentation about our functions.
      (We're not currently using this file.)
    * myFunctions.swiftmodule contains the public interface and definitions
      This file is used when we use "import"

5.  Use an import statement at the beginning of your main.swift file:
    import myFunctions

    The import statement may be highlighted in red as an error.
    It is safe to ignore the highlight (in this case).

6.  Your main.swift file (this file) needs to accept four arguments on the
    commandline:
    * An Int
    * A Double
    * Another Double
    * A String

7.  Invoke each function using the arguments from the commandline as follows:
    Function 1:    Invoke with Int
    Function 2:    Invoke with Int
    Function 3:    Invoke with Int
    Function 4:    Invoke with Double
    Function 5:    Invoke with Another Double
    Function 6:    Invoke with String
    Function 7:    Inovke with String, Int
    Function 8:    Invoke with Int
    Function 9:    Invoke with Double
    Function 10:   Invoke with Int
    Function 11:   Invoke with Int
    Function 12:   Invoke with Double, Another Double
    Function 13:   Invoke with Int
    Function 14:   Invoke with Int


8.  Print the results of each function by printing the function NUMBER and 
    the results of the function.  For example:

    print("Function 5 returned \(ceiling(x: secondParameter))")

9.  Compile your main.swift file and link to your dynamic library by executing:
    ./makeMain.sh

10. Ensure that the test harness is working correctly by executing main.
    Remember to specify four parameters.  For example:
    ./main 12 15.5 27.2 hello

********************************************************************************/

print("Please input: int double double string - else, enter an interactive mode")

var exit = false;
if(CommandLine.argc > 1){
    exit = true;
    let inputInt = Int(CommandLine.arguments[1])!
    let inputDoubleA = Double(CommandLine.arguments[2])!
    let inputDoubleB = Double(CommandLine.arguments[3])!
    let inputString = (CommandLine.arguments[4])
    print("Function 1 returned: \(twiceInteger(int: inputInt))")
    print("Function 2 returned: \(fiveInteger(int: inputInt))")
    print("Function 3 returned: \(tenInteger(int: inputInt))")
    print("Function 4 returned: \(floor(double: inputDoubleA))")
    print("Function 5 returned: \(ceiling(double: inputDoubleB))")
    print("Function 6 returned: \(doubleString(string: inputString))")
    print("Function 7 returned: \(repeatString(string: inputString, times: inputInt))")
    print("Function 8 returned: \(intToString(int: inputInt))")
    print("Function 9 returned: \(doubleToString(double: inputDoubleA))")
    print("Function 10 returned: \(returnFactorial(int: inputInt))")
    print("Function 11 returned: \(gucci(nth: inputInt))")
    print("Function 12 returned: \(rightTriangle(sideA: inputDoubleA, sideB: inputDoubleB))")
    print("Function 13 returned: \(isPrime(int: inputInt))")
    print("Function 14 returned: \(countPrimes(int: inputInt))")
}


while(!exit){
    print("Options Menu:")
    print("Type the number in order to select")
    print("0. Exit")
    print("1. Function 1: Multiply by 2")
    print("2. Function 2: Multiply by 5")
    print("3. Function 3: Multiply by 10")
    print("4. Function 4: Floor")


    if let inputI = readLine() {
        print("Input accepted!")
        if(inputI == "0") { print("Exiting!"); exit = true; }
        else if(inputI == "1") {
            print("Function 1: Please input an int");
            let intIn = readLine()
            print(twiceInteger(int: intIn))
        }
        else if(inputI == "2") { }
        else if(inputI == "3") { }
        else if(inputI == "4") { }
        else if(inputI == "5") { }
        else if(inputI == "6") { }
        else if(inputI == "7") { }
        else if(inputI == "8") { }
        else if(inputI == "9") { }
        else if(inputI == "10") { }
        else if(inputI == "11") { }
        else if(inputI == "12") { }
        else if(inputI == "13") { }
        else if(inputI == "14") { }
        
    }
    print("Input denied!")
    
}
