//
//  CupData.h
//  Pong
//
//  Created by Chris DeBiase on 12/1/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CupData : NSObject

@property (assign) NSInteger made;
@property (assign) NSInteger missed;
@property (assign) NSInteger wins;
@property (assign) NSInteger losses;
@property (assign) NSInteger rating;


- (id)init;

@end
