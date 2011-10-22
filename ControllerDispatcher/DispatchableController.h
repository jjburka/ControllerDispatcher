//
//  DispatchableController.h
//  ControllerDispatcher
//
//  Created by James Burka on 9/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DispatchableController <NSObject>

@property (nonatomic,assign) SEL dispatchMethod;

@end
