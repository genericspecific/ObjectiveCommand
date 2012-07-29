//
//  CommandRegistry.m
//  Curate
//
//  Created by Constantine Karlis on 20/04/12.
//  Copyright (c) 2012 Constantine Karlis. All rights reserved.
//

#import "CommandRegistry.h"


@implementation CommandRegistry
{
    NSMutableDictionary* _registry;
}

- (id)init
{
    self = [super init];
    if (self)
    {
        _registry = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(void)addCommand:(Class)commandClass forKey:(NSString*)key
{
    [_registry setObject:commandClass forKey:key];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fireCommand:) name:key object:nil];
}

-(void)removeCommand:(Class)commandClass forKey:(NSString*)key
{
    [_registry removeObjectForKey:key];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:key object:nil];
}

-(void)fireCommand:(NSNotification*)noti
{
    Class c = [_registry objectForKey:noti.name];
    NSObject<Command>* bcc = [[c alloc] init];
    [bcc execute:noti];
}

@end
