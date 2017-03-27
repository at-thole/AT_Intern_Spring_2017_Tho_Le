#DAILY REPORT
####27-03-2017

####Difference between null and undefined in JavaScript?
**Undefined:** a variable has been declared but has not yet been assigned a value.

**Null:** can be assigned to a variable as a representation of no value.

```python
var a;
var b = nul;
typeof a; // => undefined
typeof b; // => object
```

####What is Use strict ? Advantages and Disadvantages ?
**Use strict** is the declaration keyword that uses **Strict Mode**.
You may forget to put a semicolon at the end of each code and you can use the names of the keywords to create the variable name. **Use strict** resolve it.

**Advantages:**
- Duplicate keys in object.
- Variables without var.
- Duplicate arguments.
- Freezes the arguments of the functions.

**Disadvantages:**
- Not use the “with” statement.
- Not use the “arguments.caller” property.

####DOM tree?
Is tree include all nodes in HTML. Each Node shows information about the corresponding HTML element in the DOM.
Example:
```python
body
- div1
  + p
  + div
  + a
- div2
  + table
    + tbody
    + tr
  + ul
    + li
```

####Differences between `==` and `===`?
`==` means automatically it will covert the variable to value irrespective of data type.
`===` means values which we are comparing must have the same type.
Example:
>1 === '1' // => false
>1 == '1' // => true
>null == undefined // => true
>null === undefined // => false

####Differences on the usage of foo between function foo() {} and var foo = function() {}?
- `function foo() {}` : a function declaration.
- `var foo = function() {}` : a function expressions. That one creates a function with no name, which it assigns to the foo variable.

####How can JavaScript manipulate HTML dynamically?
Using DOM & BOM.
- DOM : is the Document Object Model, which deals with the document, the HTML elements themselves.
- BOM : is the Browser Object Model, which deals with browser components aside from the document.

####How to store a Javascript variable at client side?
Using `Cookies` or `Web storage`.
**Cookies:** are data, stored in small text files, on your computer.
**Web storage:** With local storage, web applications can store data locally within the user's browser. Unlike cookies, the storage limit is far larger (at least 5MB) and information is never transferred to the server.
