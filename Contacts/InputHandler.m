//
//  InputHandler.m
//  Contacts
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)inputFromPrompt:(NSString*)promptString {
    NSLog(@"%@", promptString);
    char inputChar[255];
    
    
    fgets(inputChar, 255, stdin);
    NSString *answer = [NSString stringWithUTF8String:inputChar];
    answer = [answer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return answer;
}



@end
