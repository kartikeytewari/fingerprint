/* Author: Kartikey Tewari
 E-mail: kartikeya30@gmail.com */


#include <bits/stdc++.h>
using namespace std;

int main()
{
    int n;
    cin >> n;
    map<int,int> count;

    // reads the values
    for (int i=0;i<=n-1;i++)
    {
        int a;
        cin >> a;
        count[a]++;
    }

    // checks the ammount of unique values in the hash table
    int correct=0;
    for (auto it=count.begin();it!=count.end();it++)
    {
        if (it->second==1)
        {
            correct++;
        }
    }

    // generate metrics
    cout << "Metrics calculated" << endl;
    cout << "-------------------" << endl;
    cout << "Correct Matches= " << correct << endl;
    cout << "Total Entries= " << n << endl;
    cout << "Hit Percentage= " << ((double)correct/(double)n)*100 << "%" << endl;
    cout << "Error Percentage= " << ((double)(n-correct)/(double)n)*100 << "%" << endl;
    cout << "-------------------" << endl;

    return 0;
}