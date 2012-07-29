//
//  Command.h
//  Curate
//
//  Created by Constantine Karlis on 20/04/12.
//  Copyright (c) 2012 Constantine Karlis. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Command <NSObject>

-(void)execute:(NSNotification*)notification;

@end
