#DAILY REPORT
####21-03-2017

####Import
The @import CSS at-rule is used to import style rules from other style sheets. These rules must precede all other types of rules
>@import url("style.css")
>@import "custom.css";


####Media
The @media rule is used to define different style rules for different media types/devices.
**Header:**
>meta name="viewport" content="width=device-width, initial-scale=1.0"

**CSS:**
```scss
@media screen and (min-width: 480px) {
    body {
        background-color: lightgreen;
    }
}
```

####CSS Pre Processor
**Nesting** 
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

**Variables:** 
`CSS Variables` are entities defined by CSS authors which contain specific values to be reused throughout a document
```scss
$font-size: 16px;

div {
    font-size: $font-size;
}
```

**Extend**
Extend lets you share a set of CSS properties from one selector to another
```scss
%element{
  color: yellow;
}
.div1{
  @extend %element;
}
```

**Mixin**
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
