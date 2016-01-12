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

+ (instancetype) initWithHeight: (float)height width: (float) width depth: (float) depth;

- (id) initHeight: (float)height width: (float) width depth: (float) depth;

-(float) calculateVolume;

-(void) canContain: (Box *) innerBox;

@end
