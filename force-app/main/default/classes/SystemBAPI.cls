public class SystemBAPI {
    
    
    public static void calloutRetriveAccount(){
        Http http = New Http();
        HttpRequest request = New HttpRequest();
        
        // String endpoint = 'callout:SystemB/services/data/v55.0/sobjects/Account/';
        
        String endpoint = 'callout:SystemB/services/apexrest/webserviceAccount/';
        
        request.setEndpoint(endpoint);
        request.setMethod('GET');       
        request.setHeader('Content-Type','application/json');
        
        HttpResponse response = http.send(request);
        
        
        System.debug('Status Code : '+ response.getStatusCode());
        System.debug('Response BODY: '+ response.getBody());
        
        
         //CUSTOM OBJECT :> get from JSON body Map the 'results' list element
        List<Object> resultslist = (List<Object>)JSON.deserializeUntyped(response.getBody());
       
        for(Object res:resultslist ){
            Map<String,Object> accProps= (Map<String, Object>) res;
            System.debug(accProps.get('Id') + ' > Account Name  '+ accProps.get('Name'));
        }
        
        
        
        // ACCOUN OBJECT 
        // 
        List<Account> resultslistOFACC = (List<Account>)JSON.deserialize(response.getBody(),List<Account>.class);
        for(Account res:resultslistOFACC ){
         	System.debug(res.Id +' > '+ res.Name +' '+res.Industry);         
            
          
            
		}

        
    }
    
    
    
    public static void retrieveOLDMETHODAccount(){
        Http http = New Http();
        HttpRequest request = New HttpRequest();
        
        String endpoint = 'https://systemb2-dev-ed.my.salesforce.com/services/data/v55.0/query?q=SELECT+Id+FROM+Account';
        String token='00D8V000000j7Jt!AQYAQGwMzsoC25YTdwN1UnoCfAWLeOSeEzJ0lr5_EP4af1PzKUuWe4ZaBz00B27yHEELt4AGwEOBNCQ3C2Ho_sNZWxKnzJwu';
        
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        request.setHeader('Authorization', 'Bearer ' +token);
        request.setHeader('Content-Type','application/json');
        
        HttpResponse response = http.send(request);
        
        
        System.debug('Status Code : '+ response.getStatusCode());
        System.debug('Response BODY: '+ response.getBody());

        
    }
    

}