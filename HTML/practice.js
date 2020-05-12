var lastName = "山田";
var firstName = "太郎";
var name = "山田太郎";

// p2
console.log("山田太郎");
// p3
console.log(lastName);
console.log(firstName);
// p4
var age = 40;
if (age >= 20) {
  console.log("成人です");
} else {
  console.log("未成年です");
}
if (age >= 0 && age >= 4) {
  console.log("幼年期");
}
else if (age <= 14) {
  console.log("少年期");
}
else if (age <= 24) {
  console.log("青年期");
}
else if (age <= 44) {
  console.log("壮年期");
}
else if (age <= 64) {
  console.log("中年期");
} else {
  console.log("高年期");
}
// p5
var sum = 0;
for (var i=1; i<=10; i++) {
  sum += i;
}
console.log(sum);
for (var i=1; i<=9; i++) {
  var length = "";
  sum = 0;
  for (var j=0; j<9; j++) {
    sum += i;
    length += " " + sum;
  }
  console.log(length);
}
// p6
var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
var sum6 = 0;
for (var i=0; i<array.length; i++) {
  sum6 += array[i];
}
console.log(sum6);
var sum6_2 = 0;
for (var val of array) {
  sum6_2 += val;
}
console.log(sum6_2);
for (var i=0; i<array.length; i++) {
  if (i % 2 == 0) { continue; }
  console.log(i);
}
for (var val of array) {
  if (val % 2 == 0) { continue; }
  console.log(val);
}
// p7
var hash = {
  "日本" : "東京",
  "スリランカ" : "スリジャヤワルダナプラコッテ",
  "タイ" : "クルンテープ",
};
console.log(hash["日本"]);
console.log(hash["タイ"]);
hash["タイ"] = "バンコク";
console.log(hash["タイ"]);
// p8
function printName () {
  console.log(name);
}
printName();
// p8_2
function add (x, y) {
  return x + y;
}
function sub (x, y) {
  return x - y;
}
function multi (x, y) {
  return x * y;
}
function div (x, y) {
  return x / y;
}
console.log(add(5, 3));
console.log(sub(5, 3));
console.log(multi(5, 3));
console.log(div(5, 3));
// p9
var printNameVariable = function() {
  console.log(name);
};
printNameVariable();
var addVariable = add(5,3);
var subVariable = sub(5,3);
var multiVariable = multi(5,3);
var divVariable = div(5,3);
console.log(add(5, 3));
console.log(sub(5, 3));
console.log(multi(5, 3));
console.log(div(5, 3));
// p10
if (true) {
  var x = 5;
}
console.log(x);

