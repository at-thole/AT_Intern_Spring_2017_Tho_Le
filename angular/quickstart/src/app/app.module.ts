import { NgModule } from '@angular/core';
import { HttpModule } from '@angular/http';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';
import { AppComponent }  from './app.component';
import { TrainerComponent } from './Demo/trainers.component';
import { DetailComponent } from './Demo/details.component';
import { InternComponent } from './Demo/intern.component';
import { Mypipe } from './Demo/demo.pipe';
import { AvatarPipe } from './Demo/avatar.pipe';
import { InternPipe } from './Demo/intern.pipe';

@NgModule({
  imports:      [ BrowserModule, FormsModule, HttpModule ],
  declarations: [ TrainerComponent, DetailComponent, Mypipe, InternComponent, InternPipe, AvatarPipe ],
  bootstrap:    [ TrainerComponent ]
})
export class AppModule { }
