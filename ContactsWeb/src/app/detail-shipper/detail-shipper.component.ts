import { Component, OnInit } from '@angular/core';
import { Shipper } from '../../model/model.shipper';
import { ShippersService } from '../shippers/shippers.service';
import { ActivatedRoute } from '@angular/router';
import { Message } from '@angular/compiler/src/i18n/i18n_ast';
import { Alert } from 'selenium-webdriver';
import { Contact } from 'src/model/model.contact';
import { ContactsService } from '../contacts/contacts.service';
import { forEach } from '@angular/router/src/utils/collection';

@Component({
  selector: 'app-detail-shipper',
  templateUrl: './detail-shipper.component.html',
  styleUrls: ['./detail-shipper.component.css']
})
export class DetailShipperComponent implements OnInit {

  shipper:Shipper=new Shipper();
  id:number;
  mode:number=1;
  contacts:Array<Contact>;
  constructor(public activatedRoute:ActivatedRoute, public shippersService:ShippersService, public contactsService:ContactsService){    
    this.id=activatedRoute.snapshot.params['id'];
  }

  ngOnInit() {
    this.shippersService.getDetailShipper(this.id).subscribe(data=>{
      this.shipper=data;
      this.mode=1;
    }, err=>{
      console.log(err);
    });
    this.contactsService.contactsDeShipper(this.id).subscribe(data=>{
      this.contacts=data;
    }, err=>{
      console.log(err);
    })
  }
  saveShipper(){
    this.shippersService.saveShippers(this.shipper).subscribe(data=>{
      alert("Mise a jour.");
      this.mode=2;
    }, err=>{
      console.log(err);
    });
    this.contacts.forEach(obj => {
      this.contactsService.saveContacts(obj);
      console.log("contact id:  "+obj.id);
      console.log("contact name:  "+obj.nom);
    });    
    for(let c of this.contacts){
      this.contactsService.saveContacts(c);
      console.log("contact id:  "+c.id);
      console.log("contact name:  "+c.nom);
   }
  }
}
