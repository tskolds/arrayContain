# arrayContain
This is a MATLAB function that examines an array for a value of interest to the user and outputs whether the array contains it.

This is an algorithm I wrote out of personal interest. I figured writing something like this would be more convenient in the long run than writing out loops to do this every time I needed this functionality.

### INPUTS:
* A: The array of interest. The function will scan this array for the value specified.
* x: The value of interest. The functions will scan array 'A' for this value.

### OUTPUTS:
* y: A logical one or zero telling the user whether the array contains the specified value 'x'.
* occurs: The number of times this value occurs within the array.
* index: The index or indeces at which the value occurs. This can either be a scalar value if the value 'x' only occurs once, or a vector containing all of the indeces at which the calue 'x' occurs if it occurs more than once. If the array 'A' is a matrix, the indeces will be input into the vector using linear indexing.
