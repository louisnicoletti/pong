//
//  ViewController0.h
//  Pong
//
//  Created by Louis Nicoletti on 12/3/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

// For Home Page

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController0 : UIViewController

// Create swipe recognition to gameplay
- (IBAction)togameplay:(UISwipeGestureRecognizer *)sender;
// Create swipe recognition to statistics
- (IBAction)tostatistics:(UISwipeGestureRecognizer *)sender;

@property (assign) int userId;

@end