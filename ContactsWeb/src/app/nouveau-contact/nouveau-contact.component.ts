import { Component, OnInit } from '@angular/core';
import { EmailValidator } from '@angular/forms';
import { Contact } from '../../model/model.contact';
import {ContactsService} from "../contacts/contacts.service";

@Component({
  selector: 'app-nouveau-contact',
  templateUrl: './nouveau-contact.component.html',
  styleUrls: ['./nouveau-contact.component.css']
})
export class NouveauContactComponent implements OnInit {

  contact:Contact=new Contact();
  mode:number=1;
  
  constructor(public contactsService:ContactsService) { }

  ngOnInit() {
  }

  saveContact(){
    this.contactsService.saveContacts(this.contact).subscribe(data=>{
      this.mode=2;
      //console.log(data);
    }, err=>{
      console.log(err);
    })    
    //console.log(this.contact);
  }
}
