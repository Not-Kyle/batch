fn main() {
    let int: i8 = 8;
    let isTrue: bool = (int > 6);
    let isFalse: bool = (int < 6);

    if isTrue {
        println!("Is true: {}", isTrue);
    } else if isFalse {
        println!("Is not true: {}", isFalse);
    } else {
        println!("Null");
    }
}
