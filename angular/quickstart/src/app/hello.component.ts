import { Component } from '@angular/core';
@Component({
  selector: 'hello-world',
  template: `
 		<h1>My name is {{name}}</h1>
 		<information></information>
  `,
})
export class HelloComponent { 
	name: string; 
	constructor () {
		this.name = 'Huyen';
	}
}