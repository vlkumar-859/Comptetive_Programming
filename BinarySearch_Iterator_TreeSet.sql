class Solution {
    public int minDays(int[] b, int m, int k) {
        int res = -1;
        SortedSet<Integer> ar = new TreeSet<Integer>();
        for(int x:b)
            if (!ar.contains(x))   ar.add(x);
        ArrayList<Integer> arr = new ArrayList<>();
        Iterator<Integer> it = ar.iterator();
        while (it.hasNext())
        {
            arr.add(it.next());
        }
        int l=0,h=arr.size()-1;
       
        while (l<=h)
        {
            int mid = l+(h-l)/2;

            if (findCheck(b,arr.get(mid),m,k))
            {
                res = arr.get(mid); h = mid-1;
            }
            else    l = mid+1;

        }

        return res;
    }

    boolean findCheck(int[] b,int x,int m,int k)
    {

        int cnt =0;
        int res = 0;

        for(int i=0;i<b.length;i++)
        {
            if (b[i]<=x)
                cnt++;
            else cnt=0;
            if (cnt==k)
            {
                cnt=0;m--;
            }

            if (m==0)   return true;
        }
        return false;
    }

    
}