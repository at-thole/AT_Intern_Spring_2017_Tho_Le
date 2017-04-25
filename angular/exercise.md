#Angular 2
####13-04-2017

####Event binding
Event binding allows us to work in reverse from property binding. We can send information from the view, to the component class. Such information usually involves a click, hover or typing

####Data binding
Data-binding in AngularJS apps is the automatic synchronization of data between the model and view components.
When the model changes, the view reflects the change, and vice versa.

####EventEmitter
EventEmitter is a class in angular framework. It has emit() method that emits custom events. Can use EventEmitter in custom event binding

**EventEmitter work**
We have to call .emit() to emit an event to the parent.
This will then emit a change to our (change) listener we setup in the parent, to which our countChange (`$event`) callback will be invoked, and the data associated with the event will be given to us via the `$event` property.

####Life cycle hooks of Angular application
Angular calls lifecycle hook methods on directives and components as it creates, changes, and destroys them.
**Lifecycle hook:**
- `ngOnChanges()` : Called before ngOnInit() and whenever one or more data-bound input properties change.
- `ngOnInit()` : Called once, after the first ngOnChanges().
- `ngDoCheck()` : Called during every change detection run, immediately after ngOnChanges() and ngOnInit().
- `ngAfterContentInit()` : Called once after the first ngDoCheck().
- `ngAfterContentChecked()` : Called after the ngAfterContentInit() and every subsequent ngDoCheck().
- `ngAfterViewInit()` : Called once after the first ngAfterContentChecked().
- `ngAfterViewChecked()` : Called after the ngAfterViewInit and every subsequent ngAfterContentChecked().
- `ngOnDestroy()` : Called just before Angular destroys the directive/component.
