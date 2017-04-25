import { Directive, Input, ElementRef} from "@angular/core";


@Directive({selector: '[huyen]'})

export class CheckTypeDirective {
	@Input() set huyen(item : string) {
			let type: string;
			if(item == 'Black Coffee')
				type = 'Drink';
			else if (item == 'Orange')
				type = 'Fruit';
			else 
				type = 'Cake'

			this.el.nativeElement.parentNode.append(`(${type})`);
	}

	constructor(public el:  ElementRef) {
		console.log(this.el);
	}
}