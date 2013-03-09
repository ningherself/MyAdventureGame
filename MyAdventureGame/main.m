//
//  main.m
//  MyAdventureGame
//
//  Created by yining on 3/9/13.
//  Copyright (c) 2013 yining. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // 1 - Initialize game
        Game* myGame = [[Game alloc] init];
        // 2 - Show instructions
        [myGame instructions];
        
    }
    return 0;
}

