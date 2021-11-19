package tests;

import com.tests.Calculos;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class SignTest {
    @Test
    public void testReturnSom2(){
        Calculos cal = new Calculos();
        assertEquals(15, cal.som2(10,5));
    }

    @Test
    public void testReturnSub2(){
        Calculos cal = new Calculos();
        assertEquals(20, cal.sub2(10,5));
    }

    @Test
    public void testReturnMult2(){
        Calculos cal = new Calculos();
        assertEquals(50, cal.mult2(10,5));
    }

    @Test
    public void testReturnDiv2(){
        Calculos cal = new Calculos();
        assertEquals(8, cal.sub2(10,5));
    }

}
