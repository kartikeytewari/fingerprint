/* Author: Kartikey Tewari
 E-mail: kartikeya30@gmail.com */


#include <bits/stdc++.h>
using namespace std;

int main()
{
	ios_base::sync_with_stdio(false);
	cin.tie(0);
	cout.precision(10);

	// reads values
	int n;
	cin >> n;
	pair<int,int> arr[n];
	for (int i=0;i<=n-1;i++)
	{
		cin >> arr[i].first >> arr[i].second;
	}

	// generate the eucledian distance among two points
	// then add them in the ans variable
	int ans=0;
	for (int i=0;i<=n-1;i++)
	{
		for (int j=0;j<=n-1;j++)
		{
			int delta_x=pow(arr[i].first-arr[j].first,2);
			int delta_y=pow(arr[i].second-arr[j].second,2);
			int local=pow((delta_x+delta_y),0.5);
			ans+=local;
		}
	}
	
	cout << ans << endl;
	return 0;
}
