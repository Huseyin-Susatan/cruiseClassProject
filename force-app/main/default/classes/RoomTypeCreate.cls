public with sharing class RoomTypeCreate {
	/* Integer HowMuch;
    String	Name;
    Decimal Price;
    String Feature;
    String Classes; */
    
    @AuraEnabled
    public static void createRoomType(Integer HowMuch, String Name,Decimal Price, String Feature, String Classes){
        
    	List<Room_Type__c> RoomType = New List<Room_Type__c>();
        Integer x=1;
        for(x=1;x<=Howmuch;x++){
            Room_Type__c newrecord = New Room_Type__c();
            newrecord.Name=Name+' '+x;
          	newrecord.Price__c=Price;
            newrecord.Feature__c=Feature;
            newrecord.Class__c=Classes;
            RoomType.add(newrecord);
        }
        insert RoomType;
    }
}