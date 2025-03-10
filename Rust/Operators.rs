fn main() {
    let mut mult: i32 = 8 * 8;
    let div: i32 = 64 / 8;
    let sub: i32 = 64 - 8;
    let add: i32 = 8 + 8;
    let remain: i32 = 10 % 3;

    mult *= 8;
    mult -= 8;
    mult += 8;
    mult /= 8;

    println!("Multiple: {}", mult);
    println!("Remain: {}", remain);
}

/*
>
<
>=
<=
==
!=
*/
