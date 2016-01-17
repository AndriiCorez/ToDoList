//
//  CUITableViewCell.m
//  ToDoList
//
//  Created by Andres on 1/16/16.
//  Copyright (c) 2016 Andres. All rights reserved.
//

#import "CUITableViewCell.h"

@implementation CUITableViewCell

- (void)setInternalFields:(ToDoEntity*)incomingToDoEntity{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
    
    self.toDoTitle.text = incomingToDoEntity.title;
    self.toDoDate.text = [dateFormatter stringFromDate:incomingToDoEntity.dueDate];
    self.toDoEntity = incomingToDoEntity;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
