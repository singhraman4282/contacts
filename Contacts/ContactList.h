//
//  ContactList.h
//  Contacts
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject




{
    NSMutableArray *contactArray;
}
-(void)addContact:(Contact *)newContact;
-(NSMutableArray *)getContactArray;
@end
