#Angular 2
####16-04-2017

####@Component decorator in Angular 2
Component decorator allows you to mark a class as an Angular component and provide additional metadata.
- Selector is the element property that we use to tell Angular to create and insert an instance of this component.
- Template is a form of HTML that tells Angular what needs to be to rendered in the DOM.

Example:
```javascript
import {Component} from '@angular/core';
@Component({
  selector: 'my-component',
  template: '<p>First {{name}} </p>'
})
export class MyComponent {
  name: string;
  constructor() {
    this.name = 'example component';
  }
}
```

####@Directive decorator in Angular 2
A Directive modifies the DOM to change apperance, behavior or layout of DOM elements.

- Component - directive with a template.
- Attribute directives - directives that change the behavior of a component or element but don't affect the template
- Structural directives - directives that change the behavior of a component or element by affecting how the template is rendered

Example:

```javascript
import {Directive} from '@angular/core';
@Directive({
  selector: 'my-directive',
 })
export class MyDirective{}
```

####@Input decorator in Angular 2
@Input is used to define an input property to achieve component property binding.

####@Output decorator in Angular 2
@Output is used to define output property to achieve custom event binding.

####Difference between component and directive in Angular 2
- We create Component with the help of @Component meta-data annotation while we create Directive with the help of @Directive meta-data annotation.
- @Component is used to create new View(Shadow DOM) with attached behaviour while @Directive is used to add behavior to an existing DOM element.
- Only one component can be present per DOM element; Many directive can be used in a per DOM element.
