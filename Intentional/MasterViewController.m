//
//  MasterViewController.m
//  Intentional
//
//  Created by Brad Grzesiak on 2/4/14.
//  Copyright (c) 2014 Bendyworks Inc. All rights reserved.
//

#import "MasterViewController.h"

#import "PersonProxy.h"

@interface MasterViewController ()
@property (strong, nonatomic) IBOutlet PersonProxy *personProxy;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@end

static NSDictionary *affordances = nil;

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    affordances =
        @{NSManagedObjectContextDidSaveNotification: @"personWasSaved:",
          NSManagedObjectContextObjectsDidChangeNotification: @"emailWasChanged:"};

    for (NSString *key in affordances)
        [self observe:key andPerform:affordances[key]];
}

- (void)observe:(NSString *)notification
     andPerform:(NSString *)selectorName {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:NSSelectorFromString(selectorName)
                                                 name:notification
                                               object:self.managedObjectContext];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)emailWasChanged:(NSNotification *)note {
    [self setEnabledStateForSaveButton];
}

- (void)setEnabledStateForSaveButton {
    [self.saveButton setEnabled:[self.personProxy.person validateForInsert:nil]];
}

- (void)personWasSaved:(NSNotification *)note {
    [self performSegueWithIdentifier:@"advance" sender:note];
}

@end