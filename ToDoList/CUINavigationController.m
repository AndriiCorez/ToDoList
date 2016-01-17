//
//  CUINavigationController.m
//  ToDoList
//
//  Created by Andres on 1/16/16.
//  Copyright (c) 2016 Andres. All rights reserved.
//

#import "CUINavigationController.h"

@interface CUINavigationController ()

@property (strong,nonatomic) NSManagedObjectContext *managedObjectContext;

@end

@implementation CUINavigationController

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
    id<CHandleMOC> handleMOC = (id<CHandleMOC>)self.viewControllers[0];
    [handleMOC receiveMOC:self.managedObjectContext];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
