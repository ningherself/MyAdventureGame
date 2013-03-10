//
//  Game.m
//  MyAdventureGame
//
//  Created by yining on 3/9/13.
//  Copyright (c) 2013 yining. All rights reserved.
//

#import "Game.h"

@implementation Game;
@synthesize name;
@synthesize userIsAlive;
@synthesize health;
@synthesize ans; 
-(void) instructions {
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
    // 6 - Wait for CR
    waitOnCR();
}

-(void) day1 {
    userIsAlive = true;
    //1 - Loop
    while (userIsAlive==true)
    {
        //2 - statements for the day
        //Scenario 1
        NSLog(@"\n\nDAY:01\n\nWith blurred vision, you look around to gather your surroundings.\nYou are lost.\nThe beach is rough, and the salty water is irritating your skin. You recall the plane crash.\n1.Walk into the jungle.\n2.Sleep and regain strength before walking into jungle.");
        scanf("%i", &ans);
        waitOnCR();
        
        //Answer 1
        if (ans==2) {
            NSLog(@"\n\nYou feel well rested. However, you are hungry and freezing without shelter. It is too dark to build a shelter. You try to sleep in a tree, but you are attacked by monkeys.\nPress enter to continue.");
            waitOnCR();
            health = 0;
            userIsAlive = false; //this prevents the while loops in day2 and day3 from functioning
            break;
            }
        
        //Scenario 2
        NSLog(@"\n\nInside the jungle, you find a bush with little black fruit, at its base are white speckled mushrooms.\n1.Eat mushrooms.\n2.Eat berries.");
            scanf("%i", &ans);
            waitOnCR();
        
        //Answer 2
        if (ans==1) {
            NSLog(@"\n\nYou are left with a bitter taste in your mouth and a gurgling in you stomach.\nHealth decreased.\nPress enter to continue.");
            health = health - 10;
            waitOnCR();
            }
            else {
            NSLog(@"\n\nThe sweetness of the berries is quite savory considering all the seawater you consumed.\nPress enter to continue.");
                waitOnCR();
                health = health + 10;
            }
            //Completion code
            NSLog(@"\n\nYou fall asleep beneath the tree. Day:01 was successfully completed.\nPress enter to continue.");
            waitOnCR();
            break;
		}
}

-(void) day2
{
    
}

-(void) day3
{
    
}



@end
