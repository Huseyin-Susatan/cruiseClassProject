public with sharing class LwcBulkRoomControllerF1417 {

    @AuraEnabled
    public static void createBulkRoom(Integer HowMuch, id cruiseship, id Roomtypes,Decimal Price, Integer Capacitys){
        
       
    	List<Cruise_Room__c> BulkRoom = New List<Cruise_Room__c>();
        Integer x=1;
        for(x=1;x<=Howmuch;x++){
            Cruise_Room__c newrecord = New Cruise_Room__c();
            newrecord.Cruise_Ship__c=cruiseship;                                      
            newrecord.Room_Type__c=Roomtypes;                             
          
            newrecord.Passenger_Price__c=Price;
            newrecord.Capacity__c=Capacitys;
            
            BulkRoom.add(newrecord);
        }
       insert BulkRoom;

    }
}