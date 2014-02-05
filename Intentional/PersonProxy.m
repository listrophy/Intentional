//
//  PersonProxy.m
//  Intentional
//
//  Created by Brad Grzesiak on 2/4/14.
//  Copyright (c) 2014 Bendyworks Inc. All rights reserved.
//

#import "PersonProxy.h"

#import "AppDelegate.h"

@implementation PersonProxy

- (void)awakeFromNib {
    NSManagedObjectContext *moc = ((AppDelegate *)[UIApplication sharedApplication].delegate).managedObjectContext;
    self.person =[NSEntityDescription insertNewObjectForEntityForName:@"Person"
                                               inManagedObjectContext:moc];

    [super awakeFromNib];
}

@end