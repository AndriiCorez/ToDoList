//
//  CUIViewController.m
//  ToDoList
//
//  Created by Andres on 1/16/16.
//  Copyright (c) 2016 Andres. All rights reserved.
//

#import "CUIViewController.h"

@interface CUIViewController ()

@property (strong,nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong,nonatomic) ToDoEntity *toDoEntity;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextView *descriptionField;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;


@end

@implementation CUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)receiveMOC:(NSManagedObjectContext *)incomingMOC{
    self.managedObjectContext = incomingMOC;
}

- (void)receiveToDoEntity: (ToDoEntity *)incomingToDoEntity{
    self.toDoEntity = incomingToDoEntity;
}

- (void)viewWillAppear:(BOOL)animated{
    self.titleField.text = self.toDoEntity.title;
    self.descriptionField.text = self.toDoEntity.notes;
    NSDate *dueDate = self.toDoEntity.dueDate;
    if (dueDate != nil) {
        [self.datePicker setDate:dueDate];
    }
    //Detect edit ends
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewDidEndEditing:) name:UITextViewTextDidEndEditingNotification object:self];
}

- (void)viewWillDisappear:(BOOL)animated{
    
}

- (void)textViewDidEndEditing:(NSNotification*) notification{
    if (notification.object == self) {
        self.toDoEntity.notes = self.descriptionField.text;
        [self saveToDoEntity];
    }
}

- (void)saveToDoEntity{
    NSError *error;
    BOOL saveSuccess = [self.managedObjectContext save:&error];
    if (!saveSuccess) {
        @throw [NSException exceptionWithName:NSGenericException reason:@"Couldn't save" userInfo:@{NSUnderlyingErrorKey:error}];
    }
    
}

- (IBAction)titleFieldEdited:(id)sender {
    self.toDoEntity.title = self.titleField.text;
    [self saveToDoEntity];
}

- (IBAction)dueDateEdited:(id)sender {
    self.toDoEntity.dueDate = self.datePicker.date;
    [self saveToDoEntity];
}


#pragma mark - Navigation
/*

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    id<CHandleToDoEntitty, CHandleMOC> cHandler = (id<CHandleToDoEntitty, CHandleMOC>)[segue destinationViewController];
    [cHandler receiveMOC:self.managedObjectContext];
    
    ToDoEntity *entityItem = [NSEntityDescription insertNewObjectForEntityForName:@"ToDoEntity" inManagedObjectContext:self.managedObjectContext];
    [cHandler receiveToDoEntity:entityItem];
    
    
}*/


@end
