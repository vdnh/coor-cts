import { Injectable } from "@angular/core";
import { Http } from "@angular/http";
import { map } from "rxjs/operators";
import { Transporter } from "../../model/model.transporter";

@Injectable()
export class TransportersService{
    adServer="//192.168.0.131";
    constructor(public http:Http){

    }

    getTransporters(motCle:string, page:number, size:number){
        return this.http.get(this.adServer+":8080/chercherTransporters?mc="+motCle+"&size="+size+
        "&page="+page)
        .pipe(map(res => res.json()));
    }

    saveTransporters(transporter:Transporter){
        return this.http.post(this.adServer+":8080/transporters",transporter)
        .pipe(map(res => res.json()));
    }

    getDetailTransporter(id:number){
        return this.http.get(this.adServer+":8080/transporters/"+id)
        .pipe(map(res => res.json()));
    }

    deleteTransporter(id:number){
        return this.http.delete(this.adServer+":8080/transporters/"+id).pipe(map(res=>res.json()));
    }
}