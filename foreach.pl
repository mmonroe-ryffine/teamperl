=pod

L<split|http://perldoc.perl.org/functions/split.html>
is a very good idea! Writing programs you did not intend to is normal.

Please recall that B<$> is for working with scalar variable that contains just one
value whereas B<@> is for working with an array variable that can contain many
things.  The person who wrote the L<split|http://perldoc.perl.org/functions/split.html> function
L<Larry Wall|https://en.wikipedia.org/wiki/Larry_Wall> wanted to provide a means
of going from a scalar variable to an array variable and so wrote
L<split|http://perldoc.perl.org/functions/split.html> as one way to do this.

But you are trying to go from an array to an array and so the code in
L<split|http://perldoc.perl.org/functions/split.html>
cannot determine which array value you want to use. You will probably say: I
want to
L<split|http://perldoc.perl.org/functions/split.html>
each value in the array in turn. To do that we will have to refer to each value
in the array, one by one, using a temporary scalar variable so that
L<Larry Wall|https://en.wikipedia.org/wiki/Larry_Wall>
through his code embodied in
L<split|http://perldoc.perl.org/functions/split.html>
can make sense of your request.

One way to do this is using the
L<for|http://perldoc.perl.org/perlsyn.html#Foreach-Loops>
statement. It looks like this:

  foreach my $a (@a) {

   The code in here will be executed for each value in the array @a with
   that value present in $a

  }

Example:

 require v5.16;
 use warnings FATAL => qw(all);
 use strict;
 use Data::Dump qw(dump);

 my @a = (1..10);

 foreach my $a(@a)
  {$a = $a * $a;
  }

 say STDERR "AAAA ", dump(\@a);

 # AAAA [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

The original code I gave you:

 my @a = qw(
Text
);

was wrong.  I should have put it in a scalar like this:

  my $text = <<END;
Text goes here
END

but advanced editors sometimes add spaces after the final END which stops the
peculiar
L<here document|https://en.wikipedia.org/wiki/Here_document#Perl>
construct above from putting several lines of text into a scalar variable and
gives weird error messages instead. Trying to be too helpful I supplied you
with alternative untested code that did not work well. This too is all too
normal. It is the reason one tries to use only code that has had a lot of work
on it and that work done by people you trust to do it right and fix it promptly
if it is not.

So, I suggest that you use the
L<here document|https://en.wikipedia.org/wiki/Here_document#Perl>
approach to start off with a scalar and then proceed with
L<split|http://perldoc.perl.org/functions/split.html>
as you originally aimed to do.

At some point you might have to use a
L<for|http://perldoc.perl.org/perlsyn.html#Foreach-Loops>
statement. It was my original goal to get you to do that earlier but you
brilliantly side stepped the problem by unexpectedly deploying
L<grep|http://perldoc.perl.org/functions/grep.html>
in scalar context instead.

So I have had to set you some more difficult tasks to try and push you back
onto the desired path to 1950's imperative programming. However, perhaps you
can find some ingenious way of using
L<grep|http://perldoc.perl.org/functions/grep.html>
instead of
L<for|http://perldoc.perl.org/perlsyn.html#Foreach-Loops>
to solve these problems and thus show that
programming has improved over the last 70 years?

=cut
