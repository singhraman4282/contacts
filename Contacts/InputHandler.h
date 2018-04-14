//
//  InputHandler.h
//  Contacts
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

-(NSString *)inputFromPrompt:(NSString*)promptString;

@property char *inputChar;



@end
