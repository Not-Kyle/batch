fn main() {
    enum Colors {
        Blue,
        Green,
    }

    let chosen_color = Colors::Blue;

    match chosen_color {
        Colors::Blue => println!("Blue"),
        Colors::Green => println!("Green"),
    }
}
