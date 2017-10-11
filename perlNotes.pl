#!/usr/bin/perl

# SAY VERSUS PRINT
# Say adds a new line at the end (\n). Requires you to predeclare it - whatever that means. For now, add STDERR to do it.
# Print just prints. You'll see the next line ppear directly after. Print appears last?? Not sure what the behavior is with placement. d s
# print "Sup dawg.";   COMMMENTED OUT THIS LINE BECAUSE ITS APPEARANCE HALFWAY THROUGH DISRUPTS THE CODE.
say STDERR "Sup diggity.";

# MY - DECLARE A VARIABLE
# Declare a variable by starting the command with 'my.' The $ signals the start of the variable name. The information
# after the = sign explains what to do with the variable.

# @ARGV
# An array of command line arguments provided by Perl. All command line arguments are put into the variable.
# First argument is argv[0]
# It seems like ARGV creates a kind of hotspot in the command line. When the user types input into that spot,
# the code can view and use the input for whatever purpose in the code.
my $name = $ARGV[$name];
say STDERR "Hello $name";

# @STDIN
# Stands for standard input - how the user communicates with the machine through the keyboard (or other input if redirected).
# @STDIN pauses the code execution and asks for input from the user. Empty carrots signal input from the user.
say STDERR "What's the most annoying word to you?";
$annoying = <>;
say STDERR "$annoying$annoying$annoying$annoying"
