import { Pipe, PipeTransform } from '@angular/core';
@Pipe({
  name: 'mypipe'
})
export class Mypipe implements PipeTransform {
  transform(value: any){
    if(value === ''){
      return 'asds';
    } else {
      return 'aaa';
    }
  }
}
