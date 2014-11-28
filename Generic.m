//
//  Generic.m
//  Card
//
//  Created by Sybrant on 18/01/14.
//  Copyright (c) 2013 Sybrant_M1. All rights reserved.
//

#import "Generic.h"
@implementation Generic
@synthesize pStrName,pArrFruits;


static Generic* _sharedGeneric = nil;

+(Generic*)sharedMySingleton
{
    @synchronized([Generic class])
    {
        if (!_sharedGeneric){
            [[self alloc] init];
            
        }
        
        return _sharedGeneric;
    }
    return nil;
}
+(id)alloc
{
    @synchronized([Generic class])
    {
        NSAssert(_sharedGeneric == nil, @"Attempted to allocate a second instance of a singleton.");
        _sharedGeneric = [super alloc];
        return _sharedGeneric;
    }
    
    return nil;
}
-(id)init {
    self = [super init];
    if (self != nil) {
        // initialize stuff here
    }

    pArrFruits = [[NSMutableArray alloc]initWithObjects:@"apple",@"mango",@"Orange", nil];
    return self;
}

-(void)sayhello {
    NSLog(@"This function called try it");
}

@end
