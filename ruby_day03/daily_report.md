#DAILY REPORT
####15-03-2017

####Array
Arrays are ordered, integer-indexed collections of any object.
>arr = Array.new
>arr = Array.new 10
>array[1,2,3,"a"]
>array[-10]
>a[1,2,3.8,"hello"]
>b[1,2,3,a]
>Array.new(10){ Hash.new }


####Map, Collect, Select, Inject
**Map:** Performs an action on each array element. The original array is not modified. Returns the modified array
>[1,2,3,4,5,6,7,8,9,10].map{|e| e*3 }
>returns [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]

**Collect:** Alias for `map`

**Select:** Runs an expression for each array element and, if it is true, that element gets added to the output which is returned
>[1,2,3,4,5,6,7,8,9,10].select{|el| el%2 == 0 }
>returns [2,4,6,8,10]

**Inject:**Takes an accumulator (sum) and changes it as many times as there are elements in the array. Returns the final value of the accumulator.
>[1,2,3,4,5,6,7,8,9,10].inject{|sum,e| sum += e }
>returns 55

####Hash
**Hash**  is created using key-value pairs between { }

>a = Hash.new
>a = Hash.new 10
>a["name"] = "username"
>a = {"key1": => 10, "key2": => 11}
>a = {key1: "value1", key2: "value2"}
>Hash["a", 100, "b", 200]
>Hash[ [ ["a", 100], ["b", 200] ] ]
