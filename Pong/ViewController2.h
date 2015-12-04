//
//  ViewController2.h
//  Pong
//
//  Created by Louis Nicoletti on 12/3/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController2 : UIViewController


@property (assign) int userId;
- (IBAction)togameplay:(UISwipeGestureRecognizer *)sender;
- (IBAction)tostatistics:(UISwipeGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UIButton *logout;

@end
