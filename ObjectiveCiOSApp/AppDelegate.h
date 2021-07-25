//
//  AppDelegate.h
//  ObjectiveCiOSApp
//
//  Created by Erik Desk on 2021-07-25.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

