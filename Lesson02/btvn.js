//search 
let shop = [
    {id: 1, category: "phone"},
    {id: 2, category: "laptop"},
    {id: 4, category: "laptop"},
    {id: 3, category: "tablet"}
]

let product = shop.filter(product => product.category === "laptop");
console.log(product);


//sort
let array  = [1, 3, 2, 5, 9, 3, 10, 5];

let sort = array.sort((a,b) => a - b);
console.log(sort);

//filter
let students = [
    {ID: 2000, gender: "man"},
    {ID: 3000, gender: "female"},
    {ID: 4000, gender: "female"},
    {ID: 5000, gender: "man"}
]

let filter = students.filter(filter => filter.gender === "man")
console.log(filter);

//calculate a sum
let array2 = [1, 3, 3, 5, 4, 10, 2]
let sum = array2.reduce(function (previous, current){
    return previous + current;
},0)
console.log(sum);

//paging
function paging(array, pageSize){
    let result = [];
    while(array.length){
        result.push(array.splice(0, pageSize)); // splice(): start paging at 0, pageSize = amout of a page
    }
    return result;
}

var result = paging([1, 2, 5, 5, 6, 8], 2);
console.log(result);