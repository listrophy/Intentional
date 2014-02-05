//
//  AppDelegate.m
//  Intentional
//
//  Created by Brad Grzesiak on 2/4/14.
//  Copyright (c) 2014 Bendyworks Inc. All rights reserved.
//

#import "AppDelegate.h"

#import "CoreDataConnection.h"
#import "MasterViewController.h"

@interface AppDelegate ()
@property (strong, nonatomic) CoreDataConnection *coreDataConnection;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    MasterViewController *controller = (MasterViewController *)navigationController.topViewController;
    controller.managedObjectContext = self.managedObjectContext;
    return YES;
}

- (NSManagedObjectContext *)managedObjectContext {
    return [self coreDataConnection].managedObjectContext;
}

- (CoreDataConnection *)coreDataConnection {
    if (!_coreDataConnection)
        _coreDataConnection = [CoreDataConnection new];
    return _coreDataConnection;
}

@end