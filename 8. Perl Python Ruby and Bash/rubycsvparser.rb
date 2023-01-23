require 'csv'

def printHeader(filename)
    table = CSV.read(filename, headers: true)
    puts table[0]   # header row
end

def printContents(filename)
    table = CSV.read(filename)
    for i in 1..table.length do
        puts table[i]   # print table contents
    end
end

printHeader("example.csv")
printContents("example.csv")