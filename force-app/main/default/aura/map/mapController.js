({
    init: function (cmp, event, helper) {

      
        var eventParams = event.getParams();
        if(eventParams.changeType === "LOADED") {
           // record is loaded (render other component which needs record data value)
          

                        cmp.set('v.mapMarkers', [
                            {
                                location: {
                                    Latitude: cmp.get("v.cruise.Lastest_Coordinate__Latitude__s"),
                                    Longitude: cmp.get("v.cruise.Lastest_Coordinate__Longitude__s"),
                                },
                    
                                title: cmp.get("v.cruise.Name"),
                                description:cmp.get("v.cruise.MMSI__c"),
                            }
                           
                        ]);
                    
                            cmp.set('v.markersTitle', 'Coordinates for Centering');
                            cmp.set('v.center', {
                                location: {
                                    Latitude: cmp.get("v.cruise.Lastest_Coordinate__Latitude__s"),
                                    Longitude: cmp.get("v.cruise.Lastest_Coordinate__Longitude__s"),
                                },
                            });
                            cmp.set('v.zoomLevel', 11);

            
            
            
            
            
            
                        
        } else if(eventParams.changeType === "CHANGED") {
            // record is changed

            
             cmp.set('v.center', {
                                location: {
                                    Latitude: cmp.get("v.cruise.Lastest_Coordinate__Latitude__s"),
                                    Longitude: cmp.get("v.cruise.Lastest_Coordinate__Longitude__s"),
                                },
                            });
            
            cmp.set('v.mapMarkers', [
                            {
                                location: {
                                    Latitude: cmp.get("v.cruise.Lastest_Coordinate__Latitude__s"),
                                    Longitude: cmp.get("v.cruise.Lastest_Coordinate__Longitude__s"),
                                },
                    
                                title: cmp.get("v.cruise.Name"),
                                description:cmp.get("v.cruise.MMSI__c"),
                            }
                           
                        ]);      
               
               
                           
        } else if(eventParams.changeType === "REMOVED") {
            // record is deleted
        } else if(eventParams.changeType === "ERROR") {
            // there’s an error while loading, saving, or deleting the record
        }



        
      
    }
})