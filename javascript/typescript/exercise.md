#Typescript + ES6
####11-04-2017

####What is TypeScript and Why do we need it?
**TypeScript** is a language for application-scale `JavaScript`. **TypeScript** adds optional types, classes, and modules to JavaScript.
- Because of these productivity wins from cleaner ES6 code, autocompletion, and hinting from optional typing.
- TypeScript has definition files that allow you to get these productivity boosts when coding almost in any environment from the Browser to Node.js.

####Get TypeScript and install it
Install the Typescript transpiler using npm:
>npm install -g typescript

####Compile TypeScript files
Use `tsc` to manually compile a Typescript source file into ES5
>tsc --watch demo.ts demo.js

####Object Oriented terms are supported by TypeScript
TypeScript brings familiar OOP constructs to JavaScript.
There are four main principles to Object Oriented Programming: Encapsulation, Inheritance, Abstraction, and Polymorphism. TypeScript can implement all four of them with its smaller and cleaner syntax.
**Example: **
```javascript
class User{
  phone: number;
    constructor(name: string, email: string){
      this.name = name;
      this.email = email;
      this.phone = 0123456789;
    }
    display(){
      console.log('My name ${this.name}, My email ${this.email}, My phone ${this.phone}');
    }
}
var user = new User
user.display('lvtho','abcdef@gmail.com');
```

####Implement inheritance in TypeScript
The extends keyword causes the child class to inherit from the denoted base class
Example:
```javascript
class A{
  constructor(private name: string){
  }
  display(){
    console.log(`My name is ${this.name}`);
  }
}
class B extends A{
}
var b = new B('lvtho');
b.display();
```

####Example for each of the following new features in ES6
**Block scope variable**
```javascript
function myFunction(){
  let a = 129;
  console.log(a);
}
```

**Template Literals**
```javascript
var a = 5;
var b = 10;
console.log(`Sum is ${a + b}`);
```

**Multi-line strings**
```javascript
console.log(`my name is lvtho
my name is tholv`);
```

**Arrow functions**
```javascript
var double = arr.map(v => v * 2);
```

**For...of**
```javascript
let abc = [1,2,5,7];

for (let x of abc) {
  console.log(x);
}
```

**Default parameters**
```javascript
class Table{
  constructor(public name: string = 'abc'){
  }
}
var table = new Table();
console.log(table.name);

```
