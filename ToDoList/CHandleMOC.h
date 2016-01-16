//
//  CHandleMOC.h
//  ToDoList
//
//  Created by Andres on 1/16/16.
//  Copyright (c) 2016 Andres. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CHandleMOC <NSObject>

- (void)receiveMOC: (NSManagedObjectContext *)incomingMOC;

@end
