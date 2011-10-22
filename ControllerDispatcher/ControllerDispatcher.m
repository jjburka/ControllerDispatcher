//
//  ControllerDispatcher.m
//  ControllerDispatcher
//
//  Created by James Burka on 9/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ControllerDispatcher.h"
#import "ControllerFactory.h"
#import "DispatchableController.h"

@interface ControllerDispatcher()

@property (nonatomic,retain) ControllerFactory *controllerFactory;

@end

@implementation ControllerDispatcher

@synthesize controllerFactory;
@synthesize navigationController;

+ (id) dispatcher
{
	return [[[self class] alloc] init];
}

- (id) init
{
	self = [super init];
	if (self) 
	{
		[self setControllerFactory:[ControllerFactory factory]];
	}
	return self;
}

- (void) dispatchURL:(NSURL *)anURL
{
	UIViewController<DispatchableController> *aController = [[self controllerFactory] controllerFromURL:anURL];
	
	if ([aController dispatchMethod]) 
	{
		[aController performSelector:[aController dispatchMethod] withObject:[self navigationController]];
	}
	else
	{
		[[self navigationController] pushViewController:aController animated:YES];
	}
}

@end
