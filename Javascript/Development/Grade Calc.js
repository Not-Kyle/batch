const Overall = 41;
let SetGrade = 36;

function DivideMargin(X, Y) {
  return X / Y
}

let Result = DivideMargin(SetGrade, Overall).toFixed(2)
Result = Result.replace('0.', '')

console.log(Result + '%')
