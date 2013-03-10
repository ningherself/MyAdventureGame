//
//  main.m
//  MyAdventureGame
//
//  Created by yining on 3/9/13.
//  Copyright (c) 2013 yining. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"
void waitOnCR (void)
{
    while( getchar() != '\n' ) {
        /*flush line buffer*/} ;
    
}
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // 1 - Initialize game
        Game* myGame = [[Game alloc] init];
        int response;
        myGame.health=100;
        // 2 - Set up loop variable
        bool gameIsRunning = true;
        // 3 - Loop
        while (gameIsRunning==true) {
        // 4 - Show instructions
        [myGame instructions];
            [myGame day1];
            [myGame day2];
            [myGame day3];
        if (myGame.health<=0) {
            NSLog(@"\n\nYou have died.\nPress enter for the next dialogue.");
                waitOnCR();
            }
        // 5 - Quit option
        NSLog(@"\n\nRestart?\n1.Yes\n2.No");
        scanf("%i", &response);
        if (response==2) {
                break;
            }        
    }
    return 0;
    }

}
