//
//  AppDelegate.m
//  CircularIndicator
//
//  Created by Xu Jun on 5/8/13.
//  Copyright (c) 2013 Xu Jun. All rights reserved.
//

#import "AppDelegate.h"
#import "DNCircularIndicator.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self.segmentControl setSelectedSegment:1];
}

- (IBAction)onTest:(id)sender
{
    if(self.segmentControl.selectedSegment == 1) {
        [self.circularIndicator setIndeterminate:NO];
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            for(int i=0; i<100; i++){
                dispatch_sync(dispatch_get_main_queue(), ^{
                    [self.circularIndicator setDoubleValue:i+1];
                });
                [NSThread sleepForTimeInterval:0.01];
            }
        });
    }
    else {
        [self.circularIndicator setIndeterminate:YES];
        [self.circularIndicator startAnimation:nil];
    }
}

@end
