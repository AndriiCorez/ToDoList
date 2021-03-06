//
//  CUINavigationController.h
//  ToDoList
//
//  Created by Andres on 1/16/16.
//  Copyright (c) 2016 Andres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHandleMOC.h"

@interface CUINavigationController : UINavigationController <CHandleMOC>

- (void)receiveMOC:(NSManagedObjectContext *)incomingMOC;

@end
