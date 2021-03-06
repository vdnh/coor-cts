import { Component, OnInit } from '@angular/core';
import { Transporter } from 'src/model/model.transporter';
import { TransportersService } from '../transporters/transporters.service';
import { Contact } from 'src/model/model.contact';
import { Adresse } from 'src/model/model.adresse';
import { AdressesService } from '../contacts/adresses.service';
import { ContactsService } from '../contacts/contacts.service';

@Component({
  selector: 'app-new-transporter',
  templateUrl: './new-transporter.component.html',
  styleUrls: ['./new-transporter.component.css']
})
export class NewTransporterComponent implements OnInit {
  transporter:Transporter=new Transporter();
  mode:number=1;
  contact:Contact=new Contact();
  adresse:Adresse=new Adresse();
  constructor(public transportersService:TransportersService, public contactsService:ContactsService, public adressesService:AdressesService) { }

  ngOnInit() {
  }

  saveTransporter(){
    this.transportersService.saveTransporters(this.transporter).subscribe(data=>{
      this.mode=2;
      this.transporter=data;
      this.contact.id_transporter=this.transporter.id;
      this.adresse.id_transporter=this.transporter.id;
      this.saveContact();
      this.saveAdresse();
    }, err=>{
      console.log(err);
    })    
  }
  saveAdresse(): any {
    this.adressesService.saveAdresses(this.adresse).subscribe(data=>{
    }, err=>{
      console.log(err);
    })
  }
  saveContact(): any {
    this.contactsService.saveContacts(this.contact).subscribe(data1=>{
    }, err=>{
      console.log(err);
    })
  }
}
