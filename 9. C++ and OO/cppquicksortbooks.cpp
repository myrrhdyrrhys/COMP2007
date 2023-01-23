using namespace std;

//A program to quicksort a custom defined object type, made to represent a book, in C++


//Custom object type definition
class Book
{
private:                    //Access specifier
    int bookID;             
    std::string bookName;   //Attribute (string type taken from std namespace)
    std::string ISBN;
public:
    int GetBookID();
    std::string GetBookName();
    std::string GetISBN();

    void SetBookID(int);
    void SetBookName(std::string);
    void SetBookISBN(std::string);

    Book();
    ~Book();
};

//Quicksort code
    // A utility function to swap two elements
void swap(Book* a, Book* b)
{
    Book temp = *a;
    *a = *b;
    *b = temp;
}
    //Partition array section
int partition(Book arr[], int start, int end)
{
 
    int pivot = arr[start].GetBookID;
 
    int count = 0;
    for (int i = start + 1; i <= end; i++) {
        if (arr[i].GetBookID <= pivot)
            count++;
    }
 
    // Giving pivot element its correct position
    int pivotIndex = start + count;
    swap(arr[pivotIndex], arr[start]);
 
    // Sorting left and right parts of the pivot element
    int i = start, j = end;
 
    while (i < pivotIndex && j > pivotIndex) {
 
        while (arr[i].GetBookID <= pivot) {
            i++;
        }
 
        while (arr[j].GetBookID > pivot) {
            j--;
        }
 
        if (i < pivotIndex && j > pivotIndex) {
            swap(arr[i++], arr[j--]);
        }
    }
 
    return pivotIndex;
}
    //Quicksort main with recursive calls
void quickSort(Book arr[], int start, int end)
{
    // base case
    if (start >= end)
        return;
 
    // partitioning the array
    int p = partition(arr, start, end);
 
    // Sorting the left part
    quickSort(arr, start, p - 1);
 
    // Sorting the right part
    quickSort(arr, p + 1, end);
}

int main()
{
    //Create books and set their IDs
    Book book1;
    Book book2;
    Book book3;

    book1.SetBookID(1);
    book2.SetBookID(2);
    book3.SetBookID(3);

    //Create unsorted array of books
    Book arr[] = {book2, book3, book1};
    int n = 3;
    
    //Sort books
    quickSort(arr, 0, n - 1);

    //Output sorted array of books
    for (int i = 0; i < n; i++)
    {
        cout << arr[i] << " ";
    }
    
    return 0;
}