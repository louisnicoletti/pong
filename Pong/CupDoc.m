//
//  CupDoc.m
//  Pong
//
//  Created by Chris DeBiase on 12/1/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

#import "CupDoc.h"
#import "CupData.h"


@implementation CupDoc

- (id)initWithFullImage:(UIImage*)fullImage {
    if ((self = [super init])) {
        self.data = [[CupData alloc] init];
        self.fullImage = fullImage;
    }
    return self;
}

@end