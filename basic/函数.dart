// Define a function.
void printInteger(int? x, [int b = 2]) {
  print('The number is . $x $b'); // Print to console.
}

// This is where the app starts executing.
void main() {
  var number = 42; // Declare and initialize a variable.
  printInteger(1, 4); // Call a function.
}
