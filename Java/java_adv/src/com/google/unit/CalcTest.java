package com.google.unit;

import org.junit.Assert;
import org.junit.Test;

import java.util.concurrent.ThreadLocalRandom;

public class CalcTest {
    // 注解
    @Test
    public void sum() {
        int numberA = ThreadLocalRandom.current().nextInt(-9999, 9999);
        int numberB = ThreadLocalRandom.current().nextInt(-9999, 9999);
        int sum = Calc.sum(numberA, numberB);

        // 断言
        Assert.assertEquals(numberA + numberB, sum);
    }

    @Test
    public void subtraction() {
        int numberA = ThreadLocalRandom.current().nextInt(-9999, 9999);
        int numberB = ThreadLocalRandom.current().nextInt(-9999, 9999);
        int sum = Calc.subtraction(numberA, numberB);

        Assert.assertEquals(numberA - numberB, sum);
    }
}
