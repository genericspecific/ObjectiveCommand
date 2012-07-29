//
//  CommandRegistry.h
//  Curate
//
//  Created by Constantine Karlis on 20/04/12.
//  Copyright (c) 2012 Constantine Karlis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface CommandRegistry : NSObject

-(void)addCommand:(Class)commandClass forKey:(NSString*)key;
-(void)removeCommand:(Class)commandClass forKey:(NSString*)key;
-(void)fireCommand:(NSNotification*)noti;

@end
