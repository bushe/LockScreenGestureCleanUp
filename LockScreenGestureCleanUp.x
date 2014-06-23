//
//  LockScreenGestureCleanUp.x
//  LockScreenGestureCleanUp
//
//  Created by Bushe on 23.06.2014.
//  Copyright (c) 2014 Bushe. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <substrate.h>

%hook SBLockScreenView

- (void)addGestureRecognizer:(UIGestureRecognizer*)gestureRecognizer{
	if(![gestureRecognizer isKindOfClass:[objc_getClass("SBLockScreenHintLongPressGestureRecognizer") class]] && ![gestureRecognizer isKindOfClass:[objc_getClass("SBLockScreenHintPanGestureRecognizer") class]]){
		//SBLockScreenHintLongPressGestureRecognizer and SBLockScreenHintPanGestureRecognizer are stop from loading
		%orig;
	}
}

%end