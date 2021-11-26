package tests;

import com.tests.Calculos;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TesteCalculadora {
    Calculos cal = new Calculos();

    //SOMA
    @Test
    public void testReturnSom1(){
        assertEquals(15, cal.som2(10,5));
    }
    @Test
    public void testReturnSom2(){
        assertEquals(15, cal.som2(10,15));
    }


    //SUBTRAÇÃO
    @Test
    public void testReturnSub1(){
        assertEquals(20, cal.sub2(22,2));

    }
    @Test
    public void testReturnSub2(){
        assertEquals(15, cal.sub2(10,5));
    }


    //MULTIPLICAÇÃO
    @Test
    public void testReturnMult1(){
        assertEquals(50, cal.mult2(10,5));
    }
    @Test
    public void testReturnMult2(){
        assertEquals(15, cal.mult2(10,5));
    }


    //DIVISÃO
    @Test
    public void testReturnDiv1(){
        assertEquals(8, cal.div2(16,2));
    }
    @Test
    public void testReturnDiv2(){
        assertEquals(15, cal.div2(10,5));
    }

    @Test
    public void verPotencia2el2() {
        assertEquals(4, cal.potencia(2,2));
    }
}
