import { Injectable } from "@angular/core";
import { Http } from "@angular/http";
import { map } from "rxjs/operators";
import { Shipper } from "../../model/model.shipper";

@Injectable()
export class ShippersService{
    adServer="//192.168.0.131";
    constructor(public http:Http){

    }

    getShippers(motCle:string, page:number, size:number){
        return this.http.get(this.adServer+":8080/chercherShippers?mc="+motCle+"&size="+size+
        "&page="+page)
        .pipe(map(res => res.json()));
    }

    saveShippers(shipper:Shipper){
        return this.http.post(this.adServer+":8080/shippers",shipper)
        .pipe(map(res => res.json()));
    }

    getDetailShipper(id:number){
        return this.http.get(this.adServer+":8080/shippers/"+id)
        .pipe(map(res => res.json()));
    }

    deleteShipper(id:number){
        return this.http.delete(this.adServer+":8080/shippers/"+id).pipe(map(res=>res.json()));
    }
}