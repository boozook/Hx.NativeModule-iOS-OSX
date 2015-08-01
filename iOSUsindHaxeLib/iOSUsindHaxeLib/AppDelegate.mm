//
//  AppDelegate.m
//  iOSUsindHaxeLib
//
//  Created by Alexander Kozlovskij on 29/07/15.
//  Copyright © 2015 AlexKoz. All rights reserved.
//

#import "AppDelegate.h"

#import "HaxeModule.h"
#import "TestRegexp.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Override point for customization after application launch.
	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
	
	NSLog(@"test getInt(): %i", ((int)fzzr::nativemodule::HaxeModule_obj::getInt())); //OK
	NSLog(@"test getFloat(): %f", ((float)fzzr::nativemodule::HaxeModule_obj::getFloat())); //OK
	NSLog(@"test getBool(): %i", ((bool)fzzr::nativemodule::HaxeModule_obj::getBool())); //OK
	//NSLog(@"test getString(): %f", ((NSString)fzzr::nativemodule::HaxeModule_obj::getString()));
	
	fzzr::nativemodule::HaxeModule_obj::main(); //OK
	
	fzzr::nativemodule::HaxeModule_obj::tryTrace(); //OK
	
	fzzr::nativemodule::TestRegexp_obj::test(); //OK
	
	fzzr::nativemodule::HaxeModule_obj* inst = new fzzr::nativemodule::HaxeModule_obj();// WHY?
	new fzzr::nativemodule::HaxeModule();// WHY CONSTRUCTOR DON'T WORKS?
	//inst::localMethod();
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
