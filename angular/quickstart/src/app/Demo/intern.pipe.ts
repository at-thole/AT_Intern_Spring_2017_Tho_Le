import { Pipe, PipeTransform } from '@angular/core';
@Pipe({
  name: 'internpipe'
})
export class InternPipe implements PipeTransform {
  transform(value: any, team_name: string){
    var interns = [];
    for(var i = 0; i < value.length; i++){
      if (team_name.toLowerCase() === value[i].team.toLowerCase()) {
        interns.push(value[i]);
      }
    }
    return interns;
  }
}
