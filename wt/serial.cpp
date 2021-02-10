/* Author: Kartikey Tewari
 E-mail: kartikeya30@gmail.com */


#include <bits/stdc++.h>
#include <fstream>
#define ll long long
using namespace std;

// the node is a building block of wavelet tree
struct node
{
    vector<ll> element;
    vector<ll> freq;
    struct node* left=nullptr;
    struct node* right=nullptr;
    ll low;
    ll high;
};

// builds the tree from node* root
void construct_tree (vector<ll> arr, node *root, ll low, ll high)
{
    // this is leaf node
    if (low==high)
    {
        root->element=arr;
        root->low=low;
        root->high=high;
        return;
    }

    root->element=arr;
    root->low=low;
    root->high=high;
    ll mid=(low+high)/2;

    vector<ll> left_arr;
    vector<ll> right_arr;
    vector<ll> freq_arr;
    ll count=0;
    for (auto it=arr.begin();it!=arr.end();it++)
    {
        if (*it<=mid)
        {
            left_arr.push_back(*it);
        }
        else
        {
            right_arr.push_back(*it);
            count++;
        }
        freq_arr.push_back(count);
    }

    root->freq=freq_arr;
    root->left=new node;
    root->right=new node;
    construct_tree(left_arr,root->left,low,mid);
    construct_tree(right_arr,root->right,mid+1,high);
    return;
}

// search the tree from node* root
int search_tree (node *root, int val)
{
    // leaf node
    if (root->low==root->high)
    {
        if (root->low==val)
        {
            return root->element.size();
        }
        else
        {
            return 0;
        }
    }

    int mid=(root->low + root->high)/2;
    if (val<=mid)
    {
        return search_tree(root->left, val);
    }
    else
    {
        return search_tree(root->right, val);
    }
}

int main()
{
    // Read the file for finding
    ifstream param_file;
    param_file.open("./param.txt");
    ll to_find;
    param_file >> to_find;

    // Read data for making array
    ll n;
    cin >> n;
    vector<ll> arr;

    clock_t time_a=clock();
    ll low=LLONG_MAX;
    ll high=LLONG_MIN;
    for (ll i=0;i<=n-1;i++)
    {
        ll a;
        cin >> a;
        arr.push_back(a);
        high=max(a,high);
        low=min(a,low);
    }

    // construct the tree
    struct node root;
    construct_tree (arr, &root, low, high);
    clock_t time_b=clock();
    
    // search the tree
    int count=search_tree(&root, to_find);
    clock_t time_c=clock();
    if (count==0)
    {
        cout << "Fingerprint not found in database" << endl;
    }
    else
    {
        cout << "Fingeprint found in database" << endl;
    }
    int construction_time = (int)(((double)(time_b-time_a)/CLOCKS_PER_SEC)*1e6);
    int search_time = (int)(((double)(time_c-time_b)/CLOCKS_PER_SEC)*1e6);
    cout << "Construction Time = " << construction_time << " microseconds "<< endl;
    cout << "Search Time = " << search_time << " microseconds " << endl;

    return 0;
}