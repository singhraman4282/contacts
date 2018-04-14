//
//  main.m
//  Contacts
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameon = true;
        
        ContactList *myContactList = [ContactList new];
        
        //AddingContactsAutomatically
        
        Contact *manualContact1 = [Contact new];
        manualContact1.name = @"Raman";
        manualContact1.email = @"Raman@yahoo.com";
        [myContactList addContact:manualContact1];
        
        Contact *manualContact2 = [Contact new];
        manualContact2.name = @"Raman2";
        manualContact2.email = @"Raman@yahoo.com2";
        [myContactList addContact:manualContact2];
        
        
        //AddingContactsAutomatically
        
        
        while (gameon) {
        NSLog(@"Menu\n");
        NSLog(@"What would you like to do next?");
        NSLog(@"New: Create a new contact list");
        NSLog(@"List all contacts");
        NSLog(@"Exit application");
        
        InputHandler *newInput = [InputHandler new];

            NSString *userAnswer;
            userAnswer = [NSString stringWithFormat:@"%@", [newInput inputFromPrompt:@"Enter user name"]];
           
            
            
            

            if ([userAnswer isEqualToString:@"quit"]) {
                NSLog(@"Have a nice day!");
                gameon = false;
            }//quit
            else if ([userAnswer isEqualToString:@"new"]) {
                Contact *newContact = [Contact new];
                NSString *userName;
                userName = [NSString stringWithFormat:@"%@", [newInput inputFromPrompt:@"Enter Full Name"]];
                newContact.name = userName;
                NSString *userEmail;
                userEmail = [NSString stringWithFormat:@"%@", [newInput inputFromPrompt:@"Enter Email Address"]];
                newContact.email = userEmail;
                
                NSLog(@"The name is %@", [newContact name]);
                NSLog(@"The email is %@", [newContact email]);

                [myContactList addContact:newContact];
            }//new
            
            else if ([userAnswer isEqualToString:@"list"]) {
                
                NSMutableArray *viewContactsArray;
                viewContactsArray = [myContactList getContactArray];
                //        NSLog(@"total contacts = %lu", viewContactsArray.count);
                
                for (int i = 0; i < viewContactsArray.count; i++) {
                    Contact *new = [viewContactsArray objectAtIndex:i];
                    NSLog(@"#.%d <%@>()", i, new.name);
                    
                }
                
                
            }//list
            
    }//while
    
        
    
    
    }
    return 0;
}
