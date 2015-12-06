//
//  ViewController3.h
//  Pong
//
//  Created by Louis Nicoletti on 12/3/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

// For Play Page

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "CupData.h"

@interface ViewController3 : UIViewController

@property (assign) int userId;
// Initialize data based on swipes
@property CupData* myData;
- (IBAction)loss:(UISwipeGestureRecognizer *)sender;
- (IBAction)make:(UISwipeGestureRecognizer *)sender;
- (IBAction)miss:(UISwipeGestureRecognizer *)sender;
- (IBAction)win:(UISwipeGestureRecognizer *)sender;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *lossoutlet;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *makeoutlet;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *missoutlet;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *winoutlet;
@property (weak, nonatomic) IBOutlet UIButton *tostatistics;

@end