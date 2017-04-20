import { Component } from '@angular/core'
@Component({
	selector: 'directive',
  template: `
 		<ul>
 			<div *ngFor="let coffee of coffees">
					<span [huyen]="coffee"></span>
         	/*<li [huyen]="coffee" ngSwitch="{{coffee}}">{{coffee}}
						<span *ngSwitchCase="'Black Coffee'">: Drink</span>
						<span *ngSwitchCase="'Orange'">: Fruit</span>
						<span *ngSwitchCase="'P&N'">: Cake</span>
         	</li>*/
			</div>
    </ul>
  `,
}) 
export class DirectiveComponent {
	coffees: any[];
	constructor() {
		this.coffees =['Black Coffee', 'Orange', 'P&N'];
	}

}