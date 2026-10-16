package com.example.app;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class GreeterTest {

    private final Greeter greeter = new Greeter();

    @Test
    void greetsByName() {
        assertEquals("Hello, Ada!", greeter.greet("Ada"));
    }

    @Test
    void trimsWhitespace() {
        assertEquals("Hello, Ada!", greeter.greet("  Ada  "));
    }

    @Test
    void fallsBackWhenNameIsBlank() {
        assertEquals("Hello, world!", greeter.greet(""));
        assertEquals("Hello, world!", greeter.greet("   "));
        assertEquals("Hello, world!", greeter.greet(null));
    }
}
