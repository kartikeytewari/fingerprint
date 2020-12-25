#include <bits/stdc++.h>
using namespace std;

int main()
{
    int n;
    cin >> n;
    map<int,int> count;
    for (int i=0;i<=n-1;i++)
    {
        int a;
        cin >> a;
        count[a]++;
    }

    int correct=0;
    for (auto it=count.begin();it!=count.end();it++)
    {
        if (it->second==1)
        {
            correct++;
        }
    }

    cout << "Metrics calculated" << endl;
    cout << "-------------------" << endl;
    cout << "Correct Matches= " << correct << endl;
    cout << "Total Entries= " << n << endl;
    cout << "Hit Percentage= " << ((double)correct/(double)n)*100 << "%" << endl;
    cout << "Error Percentage= " << ((double)(n-correct)/(double)n)*100 << "%" << endl;
    cout << "-------------------" << endl;

    return 0;
}