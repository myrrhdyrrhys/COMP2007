use strict;
use warnings;

#subroutine to take filename and search term as parameters, open the fine and print lines that contain the term
sub findline{
    ($filename, $searchterm) = @_;
    my $file = $filename;
    open(FH, $file) or die("File $file not found");
      
    while(my $String = <FH>)
    {
        if($String =~ / $searchterm /)
        {
            print "$String \n";
        }
    }
    close(FH);
}

&findline("example.txt", "term");