//
//  ControllerDispatcher.h
//  ControllerDispatcher
//
//  Created by James Burka on 9/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ControllerDispatcher : NSObject

+ (id) dispatcher;

@property (nonatomic,retain) UINavigationController *navigationController;

- (void) dispatchURL:(NSURL *)anURL;

@end
