import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import {RouterModule, Routes} from '@angular/router';

import { AppComponent } from './app.component';
import { ContactsComponent } from './contacts/contacts.component';
import { AboutComponent } from './about/about.component';
import { HttpModule } from '@angular/http';
import {ContactsService} from './contacts/contacts.service';
import {FormsModule} from "@angular/forms";
import { NouveauContactComponent } from './nouveau-contact/nouveau-contact.component';
import { DetailContactComponent } from './detail-contact/detail-contact.component'

const appRoutes: Routes = [
  {path: 'about', component: AboutComponent},
  {path: 'contacts', component: ContactsComponent},
  {path: 'nouveau-contact', component:  NouveauContactComponent},
  {path: 'detail-contact/:id', component:  DetailContactComponent},
  {path: '', redirectTo: '/about', pathMatch: 'full'}
];

@NgModule({
  declarations: [
    AppComponent,
    ContactsComponent,
    AboutComponent,
    NouveauContactComponent,
    DetailContactComponent
  ],
  imports: [
    BrowserModule, RouterModule.forRoot(appRoutes), HttpModule, FormsModule
  ],
  providers: [ContactsService],
  bootstrap: [AppComponent]
})
export class AppModule { }
