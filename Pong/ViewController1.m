//
//  ViewController1.m
//  Pong
//
//  Created by Louis Nicoletti on 12/3/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

// For Statistics Page

#import <Foundation/Foundation.h>
#import "ViewController1.h"

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSInteger missed = [prefs integerForKey:@"missed"];
    NSInteger made = [prefs integerForKey:@"made"];
    NSInteger wins = [prefs integerForKey:@"wins"];
    NSInteger losses = [prefs integerForKey:@"losses"];
    NSInteger rating = [prefs integerForKey:@"rating"];
    double shotper = ((double)(made) / (double)(made + missed)) * 100.00;
    
    // Print statistics in view
    [_statview setText: [NSString stringWithFormat: @"Wins: %d\n Losses: %d\n Made: %d\n Missed: %d\n Rating: %d\n Shooting Percentage: %.02f", wins, losses, made, missed, rating, shotper]];
}

// Back to home implementation
- (IBAction)backtohome1:(UIButton *)sender {
}


@end
