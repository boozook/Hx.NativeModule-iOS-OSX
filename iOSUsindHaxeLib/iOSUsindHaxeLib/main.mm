//
//  main.m
//  iOSUsindHaxeLib
//
//  Created by Alexander Kozlovskij on 29/07/15.
//  Copyright © 2015 AlexKoz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

extern "C" const char *hxRunLibrary();
extern "C" void hxcpp_set_top_of_stack();

extern "C" int main(int argc, char *argv[])
{
	hxcpp_set_top_of_stack();
	const char *error = NULL;
	error = hxRunLibrary();
	if(error)
	{
		printf("Hx:Error %s\n", error);
		return -1;
	}
	
	@autoreleasepool
	{
	    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
	}
}
