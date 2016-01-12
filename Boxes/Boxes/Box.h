//
//  Box.h
//  Boxes
//
//  Created by Carl Udren on 1/12/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property(nonatomic, assign) float height;
@property(nonatomic, assign) float width;
@property(nonatomic, assign) float depth;

+ (instancetype) boxWithHeight: (float)height width: (float) width depth: (float) depth;

- (instancetype) initWithHeight: (float)height width: (float) width depth: (float) depth;

-(float) calculateVolume;

-(void) canContainNumberOfBoxes: (Box *) innerBox;

+ (void) nestBoxesWithBox1: (Box *) box1 Box2: (Box *) box2;

@end
