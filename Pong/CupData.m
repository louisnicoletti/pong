//
//  CupData.m
//  Pong
//
//  Created by Chris DeBiase on 12/1/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

#import "CupData.h"

@implementation CupData

- init {
    if((self = [super init])) {
        self.made = 0;
        self.missed = 0;
        self.wins = 0;
        self.losses = 0;
        self.rating = 1200;
    }
    return self;
}

@end
