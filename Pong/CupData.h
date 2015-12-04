//
//  CupData.h
//  Pong
//
//  Created by Chris DeBiase on 12/1/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CupData : NSObject

@property (assign) int made;
@property (assign) int missed;
@property (assign) int wins;
@property (assign) int losses;
@property (assign) int rating;
@property (assign) int userId;


- (id)init;

@end
