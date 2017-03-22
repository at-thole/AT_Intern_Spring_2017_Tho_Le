#DAILY REPORT
####21-03-2017

####How to properly make initial styles render correctly across browsers / platforms?
**Using Responsive Web Design**
Responsive Web Design is about using CSS and HTML to resize, hide, shrink, enlarge, or move the content to make it look good on any screen
Example
In html:
>meta name="viewport" content="width=device-width, initial-scale=1.0"

In CSS:
```scss
@media screen and (min-width: 480px) {
    body {
        background-color: lightgreen;
    }
}
```

####What is the "box model" in CSS ? Which CSS properties are a part of it ?
The CSS box model is essentially a box that wraps around every HTML element. It consists of: margins, borders, padding, and the actual content
- Content: The content of the box, where text and images appear
- Padding: Clears an area around the content. The padding is transparent
- Border: A border that goes around the padding and content
- Margin: Clears an area outside the border. The margin is transparent
Example
```css
.div{
  margin: 10px;
  padding: 10px;
  border: 1px solid red;
}
```
####What is better way to clear `float`?
The best way is using `clear: both;`. It is safe to use and the following code is used for most webpages.


####What is `font-face`?
This rule allows us to load custom fonts on a webpage.
Example:
```css
@font-face{
  font-family: 'my-font';
  url('myfont.ttf') format('truetype');
}
```

####What are the advantages when working with Sass?
- Fewer HTTP Requests by Using the @import Attribute
- Keep Your Responsive Design Project More Organized
- Reusable Color Scheming
- Don’t Repeat Similar CSS Statements Throughout Your Project

####`pseudo-elements` and `pseudo-classes` in Sass
```css
p {
  &:before {
    content: "-";
  }
  &:after {
    content: "+";
  }
}
```

####Describe about rules to working with SASS
**1.Nesting** 
Nesting provides a visual hierarchy as in the HTML and increases the readability
```scss
body{
  .box{
    color: red;
  }
  .button{
    color: blue;
  }
}
```

**2.Variables:** 
`CSS Variables` are entities defined by CSS authors which contain specific values to be reused throughout a document
```scss
$font-size: 10px;
div {
    font-size: $font-size;
}
```

**3.Extend**
Extend lets you share a set of CSS properties from one selector to another
```scss
%element{
  color: yellow;
}
.div1{
  @extend %element;
}
```

**4.Mixin**
Mixin is a block of code that lets us group CSS declarations we may reuse throughout our site.
```scss
@mixin button($boder-color, $background){
  background: $background;
  border: 1px solid $boder-color;
}
.div1{
  @include button(red, blue);
}
```

####How do you see "mobile-first" approach in modern web design?
- Allows websites to reach more people
- Flexible images and media that keep content intact on any resolution
- Lets designers innovate and take advantage of new technologies
