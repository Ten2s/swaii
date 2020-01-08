import UIKit
import Foundation

// 문제 1
var doubleArray = Array<Double>([1.1, 4.4, 3.3 , 5.5 , 2.2 , 6.6])
for i in 0..<doubleArray.count{
    var min : Double =  doubleArray[i];
    var location : Int = i;
    var temp : Double = 0.0;
    for j in i+1..<doubleArray.count{
        if (min>doubleArray[j])
        {
            min=doubleArray[j];
            location = j;
         }
    }
if i != location{
        temp = doubleArray[location]
        doubleArray[location] = doubleArray[i]
        doubleArray[i] = temp
    }
}
    for i in 0..<doubleArray.count{
      if (doubleArray[i] >= 2.2 && doubleArray[i] < 6.0)
    { print(doubleArray[i])}
}
print()







//문제2
func    makeMul (x: Double) -> (Double) -> Double {
    let mul : (Double) -> Double =  {return $0 + x}
      return mul
}
var mul3 =  makeMul(x: 2.1)
var numList = [3.0,4.5,5.6,7.3]
    for numList in numList {
        let result10 = mul3(numList)
    print(result10)
}
print()



//해답
let numList2 = numList.map({$0 + 2.1})
print(numList2)






//문제3
var caps =   ["Wanki","Yeonji","Yangjin","Jiung"]
for caps in caps {
    if caps.count <= 5 {
        print(caps)
    }
}
print()

//해답
var caps2 = ["Wanki","Yeonji","Yangjin","Jiung"]


caps2.filter(){$0.count<=5}.map(){print($0)}




//문제4
func add5 (source: Int) -> (Int){
    var randNum = Int.random(in: 0..<10);
    var added = source
    added += randNum
    print(added)
    return added
}

var lista = [1,4,5,6,10];
for i in (0..<5){
    add5(source: lista[i]);
}
print()

//해답

var listb = lista.map({add5(source: $0)})
print(listb)



//문제5
let list = [560.0, 321.5, 190.0, 672.8, 1190.6, 450.3]
func priceSum (notbase:Double, notadder:Double) -> Double {
    return notbase + notadder
}
var notsum : Double = 0.0
for list in list {
    notsum = priceSum(notbase: notsum, notadder: list)
    print(notsum)
}


//해답
var notsum2 : Double = 0.0
list.map(){notsum2 = notsum2+$0
    
    print(notsum2)
    
}
