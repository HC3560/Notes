package com.google.multithreading.communication;

public class Main {
    public static void main(String[] args) {
        Commodity commodity = new Commodity();

        new Customer(commodity).start();
        new Producer(commodity).start();
    }
}
