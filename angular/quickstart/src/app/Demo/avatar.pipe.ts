import { Pipe, PipeTransform } from '@angular/core';
@Pipe({
  name: 'avatar'
})
export class AvatarPipe implements PipeTransform {
  transform(value: any){
    if(value === ''){
      return 'https://www.mautic.org/media/images/default_avatar.png';
    } else {
      return 'aaa';
    }
  }
}
