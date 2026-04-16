 curl.exe -X POST "http://localhost:54746/identity/v2/Identities/search" -H "accept: application/json" -H "authorization: Bearer b1e28c97ec0d4f489f9981fafac1b4e9" -H "Content-Type: application/json" -d "[{\"BirthDate\": \"01-FEB-2055\",    \"FirstName\": \"Ben\",    \"LastSurname\": \"Smith\",    \"MiddleName\": \"\",    \"RequestingEducationOrganizationId\" : \"22\",    \"SearchIntentType\" : \"Student\"  }]"


  
  
  curl.exe -X POST "http://localhost:54746/identity/v2/Identities" -H "accept: application/json" -H "authorization: Bearer 274f5014f9a94972b8e6e01a8b8e52f3" -H "Content-Type: application/json" -d  "{    \"BirthDate\": \"01-FEB-2055\",    \"FirstName\": \"Ben\",    \"LastSurname\": \"Smith\",    \"MiddleName\": \"\",    \"token\":\"975ABA8714DF2B57C977DEEDBBD933D4C5F96021C052914102FEF90E0F329548\",    \"RequestingEducationOrganizationId\" : \"22\",    \"CreateIntentType\" : \"Student\"  }"
  
