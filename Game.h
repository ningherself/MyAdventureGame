//
//  Game.h
//  MyAdventureGame
//
//  Created by yining on 3/9/13.
//  Copyright (c) 2013 yining. All rights reserved.
//

#import <Foundation/Foundation.h>
void waitOnCR (void);

@interface Game : NSObject
{
    //instance variables
      NSString* name;
    //make sure user is alive
    BOOL userIsAlive;
    int health;
    int ans;
    
}
@property (strong) NSString* name;
@property BOOL userIsAlive;
@property int health;
@property int ans;

- (void) instructions;
- (void) day1;
- (void) day2;
- (void) day3;
@end
