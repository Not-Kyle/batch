fn main() {
    let first: bool = true;
    let second: bool = false;

    let isEqual: bool = (first && second);
    let isOr: bool = (first || second);
    let isNot: bool = (!second);

    println!("Is equal: {}", isEqual)
}
