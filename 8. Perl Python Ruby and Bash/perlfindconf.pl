my @file_list;
find ( sub {                    #Anonymous subroutine
    return unless -f;           #Must be a "plain" file
    return unless /\.conf$/;    #Must end with `.conf` suffix (regex)
    push @file_list, $File::Find::name;
}, $directory );                #Scalar for directory to be searched

# At this point, @file_list contains all of the files found.