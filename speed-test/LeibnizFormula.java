public class LeibnizFormula {
    public static void main(void){
      int i;
      double s=0d;
      for(i=0; i<=10e8; i++){
        s += Math.pow(-1.0, i)/(2.0*i+1.0);
      }
      System.out.println("Ans:" + 4*s);
    }
}
