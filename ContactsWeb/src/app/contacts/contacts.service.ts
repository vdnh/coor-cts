import { Injectable } from "@angular/core";
import { Http } from "@angular/http";
import { map } from "rxjs/operators";
import { Contact } from "../../model/model.contact";

@Injectable()
export class ContactsService{
    adServer="//192.168.0.131";
    constructor(public http:Http){

    }

    getContacts(motCle:string, page:number, size:number){
        return this.http.get(this.adServer+":8080/chercherContacts?mc="+motCle+"&size="+size+
        "&page="+page)
        .pipe(map(res => res.json()));
    }

    contactsDeShipper(id_shipper:number){
        return this.http.get(this.adServer+":8080/contactsDeShipper?id_shipper="+id_shipper)
        .pipe(map(res => res.json()));
    }

    saveContacts(contact:Contact){
        return this.http.post(this.adServer+":8080/contacts",contact)
        .pipe(map(res => res.json()));
    }

    getDetailContact(id:number){
        return this.http.get(this.adServer+":8080/contacts/"+id)
        .pipe(map(res => res.json()));
    }

    updateContact(id:number, c:Contact){
        return this.http.put.(this.adServer+":8080/contacts/"+id);
        //.pipe(map(res => res.json()));
    }

    deleteContact(id:number){
        return this.http.delete(this.adServer+":8080/contacts/"+id).pipe(map(res=>res.json()));
    }
}