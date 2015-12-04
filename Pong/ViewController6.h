//
//  ViewController6.h
//  Pong
//
//  Created by Louis Nicoletti on 12/4/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController6 : UIViewController
- (IBAction)loss:(UISwipeGestureRecognizer *)sender;
- (IBAction)win:(UISwipeGestureRecognizer *)sender;
- (IBAction)make:(UISwipeGestureRecognizer *)sender;
- (IBAction)miss:(UISwipeGestureRecognizer *)sender;

@property (assign) int userId;

@end

