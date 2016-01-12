//
//  Box.m
//  Boxes
//
//  Created by Carl Udren on 1/12/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "Box.h"

@implementation Box

+ (instancetype) boxWithHeight: (float)height width: (float) width depth: (float) depth{
    Box *box = [[Box alloc] init];
    box.height = height;
    box.width = width;
    box.depth = depth;
    
    return box;
}

- (instancetype) initWithHeight: (float)height width: (float) width depth: (float) depth{
    self = [super init];
    if (self){
        
    _height = height;
    _width = width;
    _depth = depth;
    
    }
    return self;
}

-(float) calculateVolume{
    
    float volume = self.height * self.width *self.depth;
    return volume;
}

-(void) canContainNumberOfBoxes: (Box *) innerBox{
    
    int fit = [self calculateVolume]/[innerBox calculateVolume];
    NSLog(@"%@ will fit inside box %@ %dl time(s)", innerBox, self, fit);
}

+ (void) nestBoxesWithBox1: (Box *) box1 Box2: (Box *) box2{
    
    if ([box1 calculateVolume] > [box2 calculateVolume]) {
        [box1 canContainNumberOfBoxes:box2];
    }else if ([box1 calculateVolume] == [box2 calculateVolume]){
        NSLog(@"Boxes are the same size");
    }else
    {
        [box2 canContainNumberOfBoxes:box1];
    }
}
@end
