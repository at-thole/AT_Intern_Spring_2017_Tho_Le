import { Component} from '@angular/core';
@Component({
	selector: 'information',
	template: `
		<div> Name: {{name}}</div>
		<div> Birthday: {{birthday}}</div>
		<div> Phone: {{phone}}</div>
	`
})
export class InformationComponent {
	name: string = 'Huyen';
	birthday: string = '1/1/1';
	phone: string = '12345';
}