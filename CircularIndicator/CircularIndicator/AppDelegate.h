//
//  AppDelegate.h
//  CircularIndicator
//
//  Created by Xu Jun on 5/8/13.
//  Copyright (c) 2013 Xu Jun. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class DNCircularIndicator;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSSegmentedControl *segmentControl;
@property (assign) IBOutlet DNCircularIndicator *circularIndicator;

@end
