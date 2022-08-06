public class gorestUser {
    
    public static void retrieve(){
        Http http = New Http();
        HttpRequest request = New HttpRequest();
        
        String endpoint = 'https://gorest.co.in/public/v2/users';
        
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        
        System.debug('Status Code : '+ response.getStatusCode());
        System.debug('Response BODY: '+ response.getBody());

        
    }
    
    public static void retrieve(String userid){
        Http http = New Http();
        HttpRequest request = New HttpRequest();
        
        String endpoint = 'https://gorest.co.in/public/v2/users/'+userid;
        String token='e798ceab3d241f0c6cbeb6193e90146a9ab2f0ba660139fdeb74f6fd6833cfdc';
        
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        request.setHeader('Authorization', 'Bearer ' +token);
        request.setHeader('Content-Type','application/json');
        
        HttpResponse response = http.send(request);
        
        System.debug('USER ID : '+ userid);
        System.debug('Status Code : '+ response.getStatusCode());
        System.debug('Response BODY: '+ response.getBody());

        
    }
    
    
     public static void createUser(){
        Http http = New Http();
        HttpRequest request = New HttpRequest();
        
        String endpoint = 'https://gorest.co.in/public/v2/users/';
        String token='e798ceab3d241f0c6cbeb6193e90146a9ab2f0ba660139fdeb74f6fd6833cfdc';
        /* 
        String userData='{
      
        "name": "sergio taco",
        "email": "sergio@clarusway.com",
        "gender": "male",
        "status": "active"
}';

*/
    
         String body ='        { ' +
              '            "name": "alex victor", ' +
              '            "email": "alexvictor@clarusway.com", ' +
              '              "gender": "male",   ' +
              '            "status": "active"' +
              '        }';
		
         
              
        request.setEndpoint(endpoint);
        request.setMethod('POST');
        request.setHeader('Authorization', 'Bearer ' +token);
        request.setHeader('Content-Type','application/json');
         
        request.setBody(body); 
        
        HttpResponse response = http.send(request);
        
        System.debug('Status Code : '+ response.getStatusCode());
        System.debug('Response BODY: '+ response.getBody());

        
    }
    
      
    
    

}