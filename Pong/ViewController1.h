//
//  ViewController1.h
//  Pong
//
//  Created by Louis Nicoletti on 12/3/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

// For Statistics Page

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController1 : UIViewController

@property (assign) int userId;
// Create back to home button action
- (IBAction)backtohome1:(UIButton *)sender;
// Create view to show data
@property (weak, nonatomic) IBOutlet UITextView *statview;

@end