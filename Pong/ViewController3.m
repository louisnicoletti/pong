//
//  ViewController3.m
//  Pong
//
//  Created by Louis Nicoletti on 12/3/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

// For Play Page

#import <Foundation/Foundation.h>
#import "ViewController3.h"
#import "Math.h"

@implementation ViewController3

- (void)viewDidLoad {
    // Implimentation of data munipulation based on swipe
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSInteger losses1 = [prefs integerForKey:@"losses"];
    NSInteger wins1 = [prefs integerForKey:@"wins"];
    NSInteger makes1 = [prefs integerForKey:@"made"];
    NSInteger misses1 = [prefs integerForKey:@"missed"];
    NSInteger rating1 = [prefs integerForKey:@"rating"];
    _myData = [[CupData alloc] init];
    [_myData setLosses: losses1];
    [_myData setWins: wins1];
    [_myData setMade: makes1];
    [_myData setMissed: misses1];
    [_myData setRating: rating1];
    [super viewDidLoad];
}

- (IBAction)loss:(UISwipeGestureRecognizer *)sender {
    
    [_myData setLosses: [_myData losses] + 1];
    float part = pow(10, ([_myData rating] - 1200) / 400.00);
    float expected = (1 / (1 + part));
    NSInteger newRating = (int)[_myData rating] + 32 * (0 - expected);
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setInteger: [_myData wins] forKey:@"wins"];
    [prefs setInteger: [_myData losses] forKey:@"losses"];
    [prefs setInteger: [_myData made] forKey:@"made"];
    [prefs setInteger: [_myData missed] forKey:@"missed"];
    [prefs setInteger: newRating forKey:@"rating"];
    UIAlertView* alert = [[UIAlertView alloc]
                          initWithTitle:@"Loss!"
                          message:nil
                          delegate:self
                          cancelButtonTitle:@"Cancel"
                        otherButtonTitles:nil];
                          [alert show];
}

- (IBAction)make:(UISwipeGestureRecognizer *)sender {
    
    [_myData setMade: [_myData made] + 1];
    UIAlertView* alert = [[UIAlertView alloc]
                          initWithTitle:@"Make!"
                          message:nil
                          delegate:self
                          cancelButtonTitle:@"Cancel"
                          otherButtonTitles:nil];
    [alert show];

    
}

- (IBAction)miss:(UISwipeGestureRecognizer *)sender {
    
    [_myData setMissed: [_myData missed] + 1];
    UIAlertView* alert = [[UIAlertView alloc]
                          initWithTitle:@"Miss!"
                          message:nil
                          delegate:self
                          cancelButtonTitle:@"Cancel"
                          otherButtonTitles:nil];
    [alert show];

}

- (IBAction)win:(UISwipeGestureRecognizer *)sender {
    
    [_myData setWins: [_myData wins] + 1];
    float part = pow(10, ([_myData rating] - 1200) / 400.00);
    float expected = (1 / (1 + part));
    int newRating = (int)[_myData rating] + 32 * (1 - expected);
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setInteger: [_myData wins] forKey:@"wins"];
    [prefs setInteger: [_myData losses] forKey:@"losses"];
    [prefs setInteger: [_myData made] forKey:@"made"];
    [prefs setInteger: [_myData missed] forKey:@"missed"];
    [prefs setInteger: newRating forKey:@"rating"];
    UIAlertView* alert = [[UIAlertView alloc]
                          initWithTitle:@"Win!"
                          message:nil
                          delegate:self
                          cancelButtonTitle:@"Cancel"
                          otherButtonTitles:nil];
    [alert show];

    
}
@end
