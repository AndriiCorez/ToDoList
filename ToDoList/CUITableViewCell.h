//
//  CUITableViewCell.h
//  ToDoList
//
//  Created by Andres on 1/16/16.
//  Copyright (c) 2016 Andres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoEntity.h"

@interface CUITableViewCell : UITableViewCell

@property (strong, nonatomic) ToDoEntity *toDoEntity;
@property (weak, nonatomic) IBOutlet UILabel *toDoTitle;
@property (weak, nonatomic) IBOutlet UILabel *toDoDate;

- (void)setInternalFields:(ToDoEntity*)incomingToDoEntity;

@end
