import { LightningElement } from 'lwc';


    import createBulkRoom from '@salesforce/apex/LwcBulkRoomControllerF1417.createBulkRoom';
    
    export default class lwcBulkRoomF1417 extends LightningElement {   
    
    
        howmany=0;
        roomtyp='';
        cruiseship='';
        capacitys=0;
        prices=0;
      
    onTextchangeone(event){
      this.howmany=event.detail.value;
    }
    onTextchangetwo(event){
        this.roomtyp=(event.detail.value)[0];
    }
    onTextchangethree(event){
        this.cruiseship=(event.detail.value)[0];
    }
    onTextchangefour(event){
      this.capacitys=event.detail.value;
    }
    onTextchangefive(event){
      this.prices=event.detail.value;
    }
    
       
        callapexmethods(){

         

            createBulkRoom({HowMuch: this.howmany, cruiseship: this.cruiseship , Roomtypes: this.roomtyp, Price: this.prices,  Capacitys: this.capacitys})
           

        }
    
    }