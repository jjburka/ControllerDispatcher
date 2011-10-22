//
//  ControllerFactory.m
//  ControllerDispatcher
//
//  Created by James Burka on 9/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ControllerFactory.h"

@implementation ControllerFactory

+ (id) factory
{
	return [[[[self class] alloc] init] autorelease];
}

- (id) controllerFromURL:(NSURL *)aURL
{
    id aController = nil;
    NSArray *parameters = [[aURL query] componentsSeparatedByString:@"&"];
    NSMutableDictionary *parameterDictionary = [NSMutableDictionary dictionary];
    for (NSString *parameter in parameters) {
        NSArray *splitParameters = [parameter componentsSeparatedByString:@"="];
        [parameterDictionary setObject:[splitParameters objectAtIndex:1] forKey:[splitParameters objectAtIndex:0]];
    }
    Class aControllerClass = NSClassFromString([aURL host]);
    aController = [[[aControllerClass alloc] init] autorelease];
    for (NSString *value in [parameterDictionary allKeys]) 
    {
        [aController setValue:[parameterDictionary valueForKey:value] forKey:value];
    }
    return aController;
}


@end
