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
        Box *box1 = [[Box alloc]initHeight:1.0 width:1.0 depth:1.0];
        Box *box2 = [Box initWithHeight:1.0 width:1.0 depth:1.0];
        
        
        
        NSLog(@"Box:%@ Volume: %fl", box1, [box1 calculateVolume]);
        NSLog(@"Box:%@ Volume: %fl", box2, [box2 calculateVolume]);

        [box1 canContain:box2];
    }
    return 0;
}
