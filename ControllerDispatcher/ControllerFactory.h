//
//  ControllerFactory.h
//  ControllerDispatcher
//
//  Created by James Burka on 9/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//



@interface ControllerFactory : NSObject

+ (id) factory;
- (id) controllerFromURL:(NSURL *)aURL;

@end
