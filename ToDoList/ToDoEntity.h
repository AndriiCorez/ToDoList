//
//  ToDoEntity.h
//  ToDoList
//
//  Created by Andres on 1/16/16.
//  Copyright (c) 2016 Andres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ToDoEntity : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) NSDate * dueDate;

@end
