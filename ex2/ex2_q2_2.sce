// EXERCISE 2 - Problem 2.2

// ==================================================
// Load the audio content into discrete-time variable x of your Matlab code using the following command:x = audioread('Your_path/hw.wav')
// Write your code here

x = wavread('abc.wav')


// Plot the figure of your voice signal
// Write your code here

plot(x); 
xlabel('t');
ylabel('amplitude');
annotate('textbox');

//=================================================


// Do not modify this part

// Move x-axis and y-axis to the origin
a=get("current_axes");
set(a,"x_location","origin")
set(a,"y_location","origin")
