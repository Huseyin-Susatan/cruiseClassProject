trigger CruiseTrigger on Cruise__c (after insert,after update) {

    
    switch on Trigger.operationType {
        when BEFORE_INSERT {
            CruiseTriggerHandler.beforeInsert(trigger.New);            
        }
        
          when AFTER_INSERT {
            CruiseTriggerHandler.afterInsert(trigger.newMap);
        }

        
        when BEFORE_UPDATE {
            CruiseTriggerHandler.beforeUpdate();
        }
        
              
        when AFTER_UPDATE {
            CruiseTriggerHandler.afterUpdate(trigger.newMap);
        }
        
        
        when BEFORE_DELETE{
             CruiseTriggerHandler.beforeDelete();
    
   
        }
        when AFTER_DELETE{
             CruiseTriggerHandler.afterDelete();
        }
        when AFTER_UNDELETE{
             CruiseTriggerHandler.afterUndelete();
        }
        
    }
}