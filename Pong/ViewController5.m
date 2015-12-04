//
//  ViewController5.m
//  Pong
//
//  Created by Louis Nicoletti on 12/3/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController5.h"
#import "ViewController6.h"

@implementation ViewController5

- (IBAction)buttonPressed:(id)sender
{
    [self performSegueWithIdentifier:@"from1to2" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"from1to2"]) {
        
        ViewController6 *vc = [segue destinationViewController];
        int i = 7;
        
        [vc setUserId:i];
    }
}

@end
