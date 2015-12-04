//
//  ViewController2.m
//  Pong
//
//  Created by Louis Nicoletti on 12/3/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController2.h"
#import "ViewController3.h"

@implementation ViewController2

- (IBAction)buttonPressed:(id)sender
{
    [self performSegueWithIdentifier:@"from1to2" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"from1to2"]) {
        
        ViewController3 *vc = [segue destinationViewController];
        int i = 7;
        
        [vc setUserId:i];
    }
}

- (IBAction)togameplay:(UISwipeGestureRecognizer *)sender {
}

- (IBAction)tostatistics:(UISwipeGestureRecognizer *)sender {
}
@end

