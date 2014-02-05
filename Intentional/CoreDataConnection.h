//
//  CoreDataConnection.h
//  Intentional
//
//  Created by Brad Grzesiak on 2/4/14.
//  Copyright (c) 2014 Bendyworks Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataConnection : NSObject
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@end