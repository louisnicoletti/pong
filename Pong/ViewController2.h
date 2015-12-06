//
//  ViewController2.h
//  Pong
//
//  Created by Louis Nicoletti on 12/3/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

// For Gameplay Intro Page

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController2 : UIViewController

@property (assign) int userId;
// Create to play button
- (IBAction)toplay:(UIButton *)sender;
// Create back button
- (IBAction)backtohome2:(UIButton *)sender;

@end