fn main() {
    let mut counter: i8 = 0;
    let limit: i8 = 10;

    loop {
        counter += 1;
        println!("Counter {}", counter);

        if counter == limit {
            break;
        }
    }
}
