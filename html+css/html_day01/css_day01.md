##Knowledge round-up
####15-03-2017

####Put CSS `<link>` inside `<head></head>`?
Because CSS declared before <body> starts. It is a technique some use to let the browser start drawing the interface faster

####The most fundamental usage of form elements
``<form>``
The method attribute specifies how to send form-data
```python
<form action="" method="post" accept-charset="utf-8">

</form>
```
``<input>``
**input** tag specifies an input field where the user can enter data
```python
<input type="text" name="" value="" placeholder="">
```
**More type of input** : number, radio, password, checkbox, button, date, hidden, submit ...

``<label>``
**label** tag defines a label for an **input** element.
```python
<label for=""></label>
```

``<textarea>``
**textarea** tag defines a multi-line text input control.
```python
<textarea name=""></textarea>
```

``<button>``
**button** tag defines a clickable button.
```python
<button type=""></button>
```

####Difference between classes and IDs in CSS ?
ID in CSS :
- Each element can have only one ID
- Each page can have only one element with that ID

Class in CSS :
- Can use the same class on multiple elements.
- Can use multiple classes on the same element.

####Describe float and how they work.
The float property specifies whether or not an element should float.
```python
.example{
  float: right;
}
```
Float has two attributes:
- **right**: move elements to the right
- **left**:  to move elements to the left
- **none**: set float default

####Difference between padding and margin?
**Padding** is the space between the content and the border.
**Margin** is the space outside the border.

####What does following snippet do and when will we use it?
```python
    * {
      box-sizing: border-box;
    }
```
`*` :  it will select all elements
`box-sizing: border-box;` :  allows include the padding and border in an element's total width and height.

####Describe z-index and how stacking boxes is formed.
The z-index property specifies the stack order of an element.
**Property Values:**
- auto: set default
- number: Sets the stack order of the element. Negative numbers are allowed.
- initial: Sets this property to its default value.
- inherit: Inherits this property from its parent element.

**Example**
```python
.element01 {
    background: red;
    position: absolute;
    z-index: 1;
}
.element02 {
    background: blue;
    position: absolute;
    z-index: 2;
}
```
Higher number are preferred. color blue be show
