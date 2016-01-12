//
//  main.m
//  Boxes
//
//  Created by Carl Udren on 1/12/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    {
        Box *box1 = [[Box alloc]initWithHeight:10.0 width:3.0 depth:9.0];
        Box *box2 = [Box initWithHeight:3.0 width:4.0 depth:5.0];
        
        
        
        NSLog(@"Box:%@ Volume: %f", box1, [box1 calculateVolume]);
        NSLog(@"Box:%@ Volume: %f", box2, [box2 calculateVolume]);

        [box1 canContainNumberOfBoxes:box2];
        
        [Box nestBoxesWithBox1:box1 Box2:box2];
    }
    return 0;
}
