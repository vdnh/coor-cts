import { Injectable } from "@angular/core";
import { Http } from "@angular/http";
import { map } from "rxjs/operators";
import { Adresse } from "../../model/model.adresse";

@Injectable()
export class AdressesService{
    adServer="//192.168.0.131";
    constructor(public http:Http){

    }

    getAdresses(motCle:string, page:number, size:number){
        return this.http.get(this.adServer+":8080/chercherCodePostal?mc="+motCle+"&size="+size+
        "&page="+page)
        .pipe(map(res => res.json()));
    }

    adressesDeShipper(id_shipper:number){
        return this.http.get(this.adServer+":8080/adressesDeShipper?id_shipper="+id_shipper)
        .pipe(map(res => res.json()));
    }

    saveAdresses(adresse:Adresse){
        return this.http.post(this.adServer+":8080/adresses",adresse)
        .pipe(map(res => res.json()));
    }

    getDetailAdresse(id:number){
        return this.http.get(this.adServer+":8080/adresses/"+id)
        .pipe(map(res => res.json()));
    }

    updateAdresse(id:number, a:Adresse){
       return this.http.put(this.adServer+":8080/adresses/"+id, a)
        .pipe(map(res => res.json()));
    }

    deleteAdresse(id:number){
        return this.http.delete(this.adServer+":8080/adresses/"+id).pipe(map(res=>res.json()));
    }
}