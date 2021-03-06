import { Component, OnInit } from '@angular/core';
import { Shipper } from 'src/model/model.shipper';
import { ShippersService } from '../shippers/shippers.service';
import { ContactsService } from '../contacts/contacts.service';
import { Contact } from 'src/model/model.contact';
import { Adresse } from 'src/model/model.adresse';
import { AdressesService } from '../contacts/adresses.service';

@Component({
  selector: 'app-new-shipper',
  templateUrl: './new-shipper.component.html',
  styleUrls: ['./new-shipper.component.css']
})
export class NewShipperComponent implements OnInit {
  shipper:Shipper=new Shipper();
  mode:number=1;
  contact:Contact=new Contact();
  adresse:Adresse=new Adresse();
  constructor(public shippersService:ShippersService, public contactsService:ContactsService, public adressesService:AdressesService) { }

  ngOnInit() {
  }

  saveShipper(){
    this.shippersService.saveShippers(this.shipper).subscribe(data=>{
      this.mode=2;
      this.shipper=data;
      this.contact.id_shipper=this.shipper.id;
      this.adresse.id_shipper=this.shipper.id;
      // console.log("id actual of shipper : "+this.shipper.id);
      // console.log("idShipper of contact : "+this.contact.id_shipper);
      // console.log("This Contact all info : "+this.contact.toString());
      this.saveContact();
      this.saveAdresse();
    }, err=>{
      console.log(err);
    });
  }

  saveContact(){
    this.contactsService.saveContacts(this.contact).subscribe(data1=>{
    }, err=>{
      console.log(err);
    })    
  }

  saveAdresse(){
    this.adressesService.saveAdresses(this.adresse).subscribe(data=>{

    }, err=>{
      console.log(err);
    })
  }
}
