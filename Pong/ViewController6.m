//
//  ViewController6.m
//  Pong
//
//  Created by Louis Nicoletti on 12/4/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController5.h"
#import "ViewController6.h"

@implementation ViewController6

- (IBAction)buttonPressed:(id)sender
{
    [self performSegueWithIdentifier:@"from1to2" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"from1to2"]) {
        
        ViewController5 *vc = [segue destinationViewController];
        int i = 7;
        
        [vc setUserId:i];
    }
}

- (IBAction)loss:(UISwipeGestureRecognizer *)sender {
}

- (IBAction)win:(UISwipeGestureRecognizer *)sender {
}

- (IBAction)make:(UISwipeGestureRecognizer *)sender {
}

- (IBAction)miss:(UISwipeGestureRecognizer *)sender {
}
@end