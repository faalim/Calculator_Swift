# Calculator_Swift
Simple Calculator using Swift

This is a basic calculator application developed in Swift. 
It can perform addition, subtraction, multiplication, and division operations on two numbers.

## Usage

To use the calculator, include the `CalBrain.swift` file in your project and import it where needed. The `CalBrain` class contains a `calculate` function that takes two numbers and an operation as input, and it returns the result of the operation.
You can press as many numbers as you want the operation will continue untill you press AC 
Each time a new number is pressed 0 will appear until '=' button is pressed
Example; 
    '1 + 1 = 2' <-- unless you press 'AC' operation will continue as '2 + number pressed' and so on. 
    
## Project Structure

- `ViewController.swift`: The main view controller for the calculator app. It handles user interactions with buttons and text views.

- `CalBrain.swift`: Contains the `CalBrain` class, which provides the calculation logic for the calculator. It includes a `calculate` method that takes an operation as a string and returns the result of performing that operation on two numbers.





