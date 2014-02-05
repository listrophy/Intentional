//
//  SaveEmailIntention.m
//  Intentional
//
//  Created by Brad Grzesiak on 2/4/14.
//  Copyright (c) 2014 Bendyworks Inc. All rights reserved.
//

#import "SaveEmailIntention.h"
#import "PersonProxy.h"

@interface SaveEmailIntention ()
@property (weak, nonatomic) IBOutlet PersonProxy *personProxy;
@end

@implementation SaveEmailIntention

- (IBAction)saveTapped:(id)sender {
    [self.personProxy.person.managedObjectContext save:nil];
}

@end