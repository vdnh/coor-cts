import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import {RouterModule, Routes} from '@angular/router';
import {FormsModule} from "@angular/forms";
import { HttpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { AboutComponent } from './about/about.component';

import { ContactsComponent } from './contacts/contacts.component';
import {ContactsService} from './contacts/contacts.service';
import { NouveauContactComponent } from './nouveau-contact/nouveau-contact.component';
import { DetailContactComponent } from './detail-contact/detail-contact.component';

import { TransportersComponent } from './transporters/transporters.component'
import { TransportersService } from './transporters/transporters.service';
import { DetailTransporterComponent } from './detail-transporter/detail-transporter.component';
import { NewTransporterComponent } from './new-transporter/new-transporter.component';
import { ShippersComponent } from './shippers/shippers.component';
import { DetailShipperComponent } from './detail-shipper/detail-shipper.component';
import { NewShipperComponent } from './new-shipper/new-shipper.component';
import { ShippersService } from './shippers/shippers.service';

const appRoutes: Routes = [
  {path: 'about', component: AboutComponent},
  {path: 'contacts', component: ContactsComponent},
  {path: 'nouveau-contact', component:  NouveauContactComponent},
  {path: 'detail-contact/:id', component:  DetailContactComponent},
  {path: 'transporters', component: TransportersComponent},
  {path: 'new-transporter', component:  NewTransporterComponent},
  {path: 'detail-transporter/:id', component:  DetailTransporterComponent},
  {path: 'shippers', component: ShippersComponent},
  {path: 'new-shipper', component:  NewShipperComponent},
  {path: 'detail-shipper/:id', component:  DetailShipperComponent},
  {path: '', redirectTo: '/about', pathMatch: 'full'}
];

@NgModule({
  declarations: [
    AppComponent,
    ContactsComponent,
    AboutComponent,
    NouveauContactComponent,
    DetailContactComponent,
    TransportersComponent,
    DetailTransporterComponent,
    NewTransporterComponent,
    ShippersComponent,
    DetailShipperComponent,
    NewShipperComponent
  ],
  imports: [
    BrowserModule, RouterModule.forRoot(appRoutes), HttpModule, FormsModule
  ],
  providers: [ContactsService, TransportersService, ShippersService],
  bootstrap: [AppComponent]
})
export class AppModule { }
