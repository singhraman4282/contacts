//
//  ContactList.m
//  Contacts
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
- (instancetype)init
{
    self = [super init];
    if (self) {
        contactArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [contactArray addObject:newContact];
    NSLog(@"The total number of contacts is %lu", (unsigned long)contactArray.count);
}

-(NSMutableArray *)getContactArray {
    return contactArray;
}
@end
