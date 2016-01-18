//
//  CUIViewController.h
//  ToDoList
//
//  Created by Andres on 1/16/16.
//  Copyright (c) 2016 Andres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHandleMOC.h"
#import "CHandleToDoEntitty.h"

@interface CUIViewController : UIViewController <CHandleMOC, CHandleToDoEntitty>

- (void)receiveMOC:(NSManagedObjectContext *)incomingMOC;
- (void)receiveToDoEntity: (ToDoEntity *)incomingToDoEntity;

@end
