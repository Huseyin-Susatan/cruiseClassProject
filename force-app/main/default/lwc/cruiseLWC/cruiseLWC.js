import { LightningElement } from 'lwc';


import createRoomType from '@salesforce/apex/RoomTypeCreate.createRoomType';



export default class CruiseLWC extends LightningElement {

  names='';
  prices=0;
  features='';
  classes='';
  howmany=0;

  onTextchange(event){
    this.names=event.detail.value;
}
onTextchang(event){
  this.prices=event.detail.value;
}
onTextcha(event){
  this.features=event.detail.value;
}
onTextch(event){
  this.classes=event.detail.value;
}
onTextc(event){
  this.howmany=event.detail.value;
}

  


    
    callapexmethod(){
      createRoomType({HowMuch: this.howmany , Name: this.names , Price: this.prices, Feature: this.features, Classes: this.classes})
        
    }

}

