
//
//  Generic.h
//  Card
//
//  Created by Sybrant on 18/01/14.
//  Copyright (c) 2013 Sybrant_M1. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface Generic : NSObject
{
  
}
@property(nonatomic,retain)NSString *pStrName;
@property(nonatomic,retain)NSMutableArray *pArrFruits;

+(Generic*)sharedMySingleton;
-(void)sayhello;
@end
