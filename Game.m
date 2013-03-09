//
//  Game.m
//  MyAdventureGame
//
//  Created by yining on 3/9/13.
//  Copyright (c) 2013 yining. All rights reserved.
//

#import "Game.h"

@implementation Game
-(void) instructions
{
    //stuff you want the method to do
    // 1 - Show introduction
    NSLog(@"\n\nYour plane crashed on an island. Help is coming in three days. Try and survive.");
    // 2 - Define storage for name
    char firstname[20];
    // 3a - Ask to key in name
    NSLog(@"\n\nKey in your name to continue");
    // 3 - Receive input via keyboard
    scanf("%s", &firstname);
    // 4 - Convert input to an NSStringNSString* name;
    name =[NSString stringWithCString:firstname encoding:NSASCIIStringEncoding];
    // 5 - Display name
    NSLog(@"Your name is: %@. Press enter to continue.", name);
    
}

@end
