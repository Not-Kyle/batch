fn celcius_to_fahrenheit(celsius: f64) -> f64 {
    (celsius * 9.0 / 5.0) + 32.0
}

fn fahrenheit_to_celcius(fahrenheit: f64) -> f64 {
    (fahrenheit - 32.0) * 5.0 / 9.0
}

fn main() {
    println!("30°C is {}°F", celcius_to_fahrenheit(30.0));
    println!("86°F is {}°C", fahrenheit_to_celcius(86.0));
}

// C = (F - 32) * 5 / 9
// F = (C * 9 / 5) + 32
