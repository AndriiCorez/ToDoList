//
//  CHandleToDoEntitty.h
//  ToDoList
//
//  Created by Andres on 1/16/16.
//  Copyright (c) 2016 Andres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoEntity.h"

@protocol CHandleToDoEntitty <NSObject>

- (void)receiveToDoEntity: (ToDoEntity *)incomingToDoEntity;

@end
