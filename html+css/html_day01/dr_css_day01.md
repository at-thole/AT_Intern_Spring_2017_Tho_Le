#DAILY REPORT
####15-03-2017

####Syntax
```python
element{
  border: 1px solid black;
}
```
`element` is a Selector
`border` is a Property
`1px solid black` are values

####CSS Selector
**Element selector**
```python
element{}
```
**Class selector**
```python
.element{}
```
**ID selecter**
```html
#element{}
```

####Pseudo
**pseudo class**
```python
.btn:hover
```
More pseudo class
- `:active` selects the active link
- `:empty` selects every `<p>` element that has no children
- `:enabled` Selects every enabled `<input>` element


**pseudo element**
```python
.picture::before
```
More selecter: after, first-letter, first-line, selection

####Prioritizing in CSS
**External < Internal < Inline**

**How to calculate the priority score ?**
Element selector : 1 point
Class selector : 10 point
Id selecter : 100 point
Inline : 1000 point
!important : 10000 point
