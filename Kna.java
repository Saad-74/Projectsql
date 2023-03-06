
package kna;
public class Kna {
    public static void main(String[] args) {
      
        int[] totaleValue = { 38, 11, 42, 22 };
        int[] weight = { 6, 2, 5, 4 };
        Knapsack cs = new Knapsack(4, 10, weight, totaleValue);
        cs.Knapsack_generate();
    }
}
class Knapsack{
    int numOfItems; 
    int capacity;
    int[] weight;
    int[] totaleValue;
    int max=0;
    public Knapsack(int numOfItems, int capacity, int[] weight, int[]totaleValue){
    this.numOfItems=numOfItems;
    this.capacity=capacity;
    this.weight=weight;
    this.totaleValue=totaleValue;
    }
    public void Knapsack_generate(){
      System.out.println("the number of subsets: "+(Math.pow(2, numOfItems)));
      int maximum=0;
      for (int i = 0; i < (Math.pow(2, numOfItems)); i++){ 
        int tv=0,w=0;
        System.out.print("{ "); 
        for (int j = 0; j < numOfItems; j++) 
           {
          int m=(int)Math.pow(2, j);
          if ((i & (m)) > 0) {
                System.out.print((j+1) + " "); 
                tv+=totaleValue[j];
                w+=weight[j];
            }

        }
        System.out.print("}\t"); 
        if(w>capacity)
          System.out.println("infeasible");
        else
        maximum=Math.max(maximum,tv);
          System.out.println( "totale Value: "+tv+"\t weight: "+w) ; 
      }
      System.out.println(" The Total cost is :"+maximum);
    }
  }