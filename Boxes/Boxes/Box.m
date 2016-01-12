//
//  Box.m
//  Boxes
//
//  Created by Carl Udren on 1/12/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "Box.h"

@implementation Box

+ (instancetype) initWithHeight: (float)height width: (float) width depth: (float) depth{
    Box *box = [[Box alloc] init];
    box.height = height;
    box.width = width;
    box.depth = depth;
    
    return box;
}

- (id) initHeight: (float)height width: (float) width depth: (float) depth{
    self.height = height;
    self.width = width;
    self.depth = depth;
    return self;
}

-(float) calculateVolume{
    
    float volume = self.height * self.width *self.depth;
    return volume;
}

-(void) canContain: (Box *) innerBox{
    
    int fit = [self calculateVolume]/[innerBox calculateVolume];
    NSLog(@"%@ will fit inside box %@ %dl time(s)", innerBox, self, fit);
}

@end
