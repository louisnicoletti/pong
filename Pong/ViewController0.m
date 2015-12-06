//
//  ViewController0.m
//  Pong
//
//  Created by Louis Nicoletti on 12/3/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

// For Home Page

#import <Foundation/Foundation.h>
#import "ViewController0.h"
#import "CupData.h"

@implementation ViewController0

- (void)viewDidLoad {
    // Initialize data when application is opened
    CupData *start = [[CupData alloc] init];
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSInteger missed = [prefs integerForKey:@"missed"];
    
    if (missed < 1)
    {
    [prefs setInteger: [start wins] forKey:@"wins"];
    [prefs setInteger: [start losses] forKey:@"losses"];
    [prefs setInteger: [start made] forKey:@"made"];
    [prefs setInteger: [start missed] forKey:@"missed"];
    [prefs setInteger: [start rating] forKey:@"rating"];
    }
    [super viewDidLoad];
    
}

// Swipes implementation
- (IBAction)togameplay:(UISwipeGestureRecognizer *)sender {
}

- (IBAction)tostatistics:(UISwipeGestureRecognizer *)sender {
}
@end