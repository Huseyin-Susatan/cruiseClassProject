public class CruiseRoomUI {
    
    @InvocableMethod(label='Bulk Room Create' description='Bulk Room Create' category='Other')
    public static void bulkRoomCreate(List<Request> requestList){
       
        String shipId = requestList.get(0).cruiseShipid;
        Integer hm = requestList.get(0).howMany;
        String roomtype = requestList.get(0).roomType;
        Integer roomcapacity= requestList.get(0).roomCapacity;
        Decimal passprice = requestList.get(0).passengerPrice;
        
        
        List<Cruise_Room__c> multiRoom = New List<Cruise_Room__c>();

		for (Integer counter = 1; counter <= hm; counter++) {
            Cruise_Room__c singleRoom = New Cruise_Room__c();
            
            singleRoom.Capacity__c = roomcapacity;
            singleRoom.Cruise__c = shipId;
            singleRoom.Room_Type__c = roomtype;
            singleRoom.Passenger_Price__c = passprice;
            
            multiRoom.add(singleRoom);
   		 
		}	
        
        try{
             insert multiRoom;
        } catch (Exception e){
            system.debug(e.getMessage());
            
            throw new cruiseroomException(e.getMessage());
            
            // standard exception
            // CalloutException exp = new CalloutException();           
            // exp.setMessage(e.getMessage());
            // throw exp;
        }
        
        system.debug(multiRoom);
        
        // List<Cruise_Room__c> multiRoom = [SELECT id FROM Cruise_Room__c LIMIT 10];
        // return multiRoom;
    }
    
    public class Request {
        @InvocableVariable(label='Cruise Ship' description='Your rooms will be related this ship id')
        public String cruiseShipid;
        @InvocableVariable(label='How Many Room ' description='How many room will be created' )
        public Integer howMany;        
        @InvocableVariable(label='Room Type' description='Room Type' )
        public String roomType;
        @InvocableVariable(label='Room Capacity' description='Room Capacity')
        public Integer roomCapacity;
        @InvocableVariable(label='Passenger Price' description='Passenger Price' )
        public Decimal passengerPrice;
    }

}