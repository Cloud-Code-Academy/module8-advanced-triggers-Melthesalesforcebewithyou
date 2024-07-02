/*
AccountHelper Overview

The `AccountHelper` class is designed to provide helper methods that assist in performing specific operations on Account records. 
This class is intended to modularize the logic used in the `AccountTrigger` to ensure separation of concerns, improve readability, and ease maintenance. 

This class is currently stubbed out. As part of this exercise, you are expected to:
1. Implement the method bodies to carry out the specified operations on Account records.
2. Refactor the `AccountTrigger` to utilize the methods provided in this `AccountHelper` class.
    -- Call the AccountHelper methods from within the trigger's context (before/after insert, etc.)

Methods:
- `setTypeProspect(SObject objects)`: 
    - Purpose: Update the 'Type' field of the given Account record to 'Prospect' if it's not already set.
    - Note: You'll likely need to adjust the method signature to accept the necessary parameters.

- `addressCopy()`: 
    - Purpose: Copy the shipping address of the Account to its billing address. 
    - Note: You'll likely need to adjust the method signature to accept the necessary parameters.

- `setRating`: 
    - Purpose: Evaluate certain conditions on the Account and assign a rating based on that evaluation. You'll need to define the method's signature and implement its logic.

- `defaultContact`: 
    - Purpose: Create a default contact related to the Account after the Account is inserted. You'll need to define the method's signature and implement its logic.

Remember:
Always ensure that your helper methods are bulk-safe to handle multiple records efficiently.
--NO SOQL QUERY IN FOR LOOP  
--Use Lists or Maps 
--Use for loop to iterate over lists of records 
--Use if conditions to check and update fields 
--NO double-nested for loops 

*/
public with sharing class AccountHelper {
    
    public static void setTypeProspect(List<Account> accounts){
        //check if Account.Type != 'Prospect' set to 'Prospect'
        for (Account acc : accounts) {
            if (acc.Type != 'Prospect') {
                acc.Type = 'Prospect'; 
            }
        }
    }

    public static void addressCopy(List<Account> accounts){
        //Set Account.ShippingAddress = Account.BillingAddress

    }

    public void setRating (List<Account> accounts) {
        //Evaluate certain conditions on Account 
        //Assign Rating based on evaluation 
    }

    public void defaultContact (List<Account> accounts) {
        //Create default Contact related to the Account AFTER insert
        //insert Contacts
    }
}
