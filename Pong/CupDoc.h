//
//  CupDoc.h
//  Pong
//
//  Created by Chris DeBiase on 12/1/15.
//  Copyright © 2015 CS50 Project. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CupData;

@interface CupDoc : NSObject

@property (strong) CupData *data;
@property (strong) UIImage *fullImage;

- (id)initWithFullImage:(UIImage*)fullImage;

@end