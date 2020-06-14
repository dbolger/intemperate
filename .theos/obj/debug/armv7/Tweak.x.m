#line 1 "Tweak.x"
static BOOL isEnabled;

@interface SBThermalController : NSObject {
}
@property (nonatomic,readonly) long long level;
@property (getter=isInSunlight,nonatomic,readonly) BOOL inSunlight;
+(id)sharedInstance;
-(BOOL)_isBlocked;
-(BOOL)isThermalBlocked;
@end

static void updatePrefs() {
	NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.5px.intemperate.plist"];
	if (prefs) {
		isEnabled = [prefs objectForKey:@"isEnabled"] ? [[prefs objectForKey:@"isEnabled"] intValue] : isEnabled;
	}
}


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBThermalController; 


#line 19 "Tweak.x"
static void (*_logos_orig$latestSyntax$SBThermalController$startListeningForThermalEvents)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static void _logos_method$latestSyntax$SBThermalController$startListeningForThermalEvents(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$latestSyntax$SBThermalController$_setBlocked$)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$latestSyntax$SBThermalController$_setBlocked$(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL, BOOL); static BOOL (*_logos_orig$latestSyntax$SBThermalController$isThermalBlocked)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$latestSyntax$SBThermalController$isThermalBlocked(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$latestSyntax$SBThermalController$_isBlocked)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$latestSyntax$SBThermalController$_isBlocked(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$latestSyntax$SBThermalController$isInSunlight)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$latestSyntax$SBThermalController$isInSunlight(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$latestSyntax$SBThermalController$level)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static int _logos_method$latestSyntax$SBThermalController$level(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); 

static void _logos_method$latestSyntax$SBThermalController$startListeningForThermalEvents(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
}
static void _logos_method$latestSyntax$SBThermalController$_setBlocked$(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
	arg1 = NO;
	_logos_orig$latestSyntax$SBThermalController$_setBlocked$(self, _cmd, arg1);
}
static BOOL _logos_method$latestSyntax$SBThermalController$isThermalBlocked(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return NO;
}
static BOOL _logos_method$latestSyntax$SBThermalController$_isBlocked(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return NO;
}
static BOOL _logos_method$latestSyntax$SBThermalController$isInSunlight(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return NO;
}
static int _logos_method$latestSyntax$SBThermalController$level(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return 0;
}



static void (*_logos_orig$previousSyntax$SBThermalController$respondToCurrentThermalCondition)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static void _logos_method$previousSyntax$SBThermalController$respondToCurrentThermalCondition(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$previousSyntax$SBThermalController$showThermalAlertIfNecessary)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static void _logos_method$previousSyntax$SBThermalController$showThermalAlertIfNecessary(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$previousSyntax$SBThermalController$isInSunlight)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$previousSyntax$SBThermalController$isInSunlight(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$previousSyntax$SBThermalController$level)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static int _logos_method$previousSyntax$SBThermalController$level(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); 

static void _logos_method$previousSyntax$SBThermalController$respondToCurrentThermalCondition(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
}
static void _logos_method$previousSyntax$SBThermalController$showThermalAlertIfNecessary(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
}
static BOOL _logos_method$previousSyntax$SBThermalController$isInSunlight(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$previousSyntax$SBThermalController$isInSunlight(self, _cmd);
	return NO;
}
static int _logos_method$previousSyntax$SBThermalController$level(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$previousSyntax$SBThermalController$level(self, _cmd);
	return 0;
}



static __attribute__((constructor)) void _logosLocalCtor_f1ee81aa(int __unused argc, char __unused **argv, char __unused **envp) {
	updatePrefs();
	if (isEnabled) {
		float version = [[[UIDevice currentDevice] systemVersion] floatValue];
		if (version >= 10) {
			NSLog(@"Intemperate - iOS 10+");
			{Class _logos_class$latestSyntax$SBThermalController = objc_getClass("SBThermalController"); MSHookMessageEx(_logos_class$latestSyntax$SBThermalController, @selector(startListeningForThermalEvents), (IMP)&_logos_method$latestSyntax$SBThermalController$startListeningForThermalEvents, (IMP*)&_logos_orig$latestSyntax$SBThermalController$startListeningForThermalEvents);MSHookMessageEx(_logos_class$latestSyntax$SBThermalController, @selector(_setBlocked:), (IMP)&_logos_method$latestSyntax$SBThermalController$_setBlocked$, (IMP*)&_logos_orig$latestSyntax$SBThermalController$_setBlocked$);MSHookMessageEx(_logos_class$latestSyntax$SBThermalController, @selector(isThermalBlocked), (IMP)&_logos_method$latestSyntax$SBThermalController$isThermalBlocked, (IMP*)&_logos_orig$latestSyntax$SBThermalController$isThermalBlocked);MSHookMessageEx(_logos_class$latestSyntax$SBThermalController, @selector(_isBlocked), (IMP)&_logos_method$latestSyntax$SBThermalController$_isBlocked, (IMP*)&_logos_orig$latestSyntax$SBThermalController$_isBlocked);MSHookMessageEx(_logos_class$latestSyntax$SBThermalController, @selector(isInSunlight), (IMP)&_logos_method$latestSyntax$SBThermalController$isInSunlight, (IMP*)&_logos_orig$latestSyntax$SBThermalController$isInSunlight);MSHookMessageEx(_logos_class$latestSyntax$SBThermalController, @selector(level), (IMP)&_logos_method$latestSyntax$SBThermalController$level, (IMP*)&_logos_orig$latestSyntax$SBThermalController$level);}
		} else if (version >= 8 && version < 10) {
			NSLog(@"Intemperate - iOS 8/9");
			{Class _logos_class$previousSyntax$SBThermalController = objc_getClass("SBThermalController"); MSHookMessageEx(_logos_class$previousSyntax$SBThermalController, @selector(respondToCurrentThermalCondition), (IMP)&_logos_method$previousSyntax$SBThermalController$respondToCurrentThermalCondition, (IMP*)&_logos_orig$previousSyntax$SBThermalController$respondToCurrentThermalCondition);MSHookMessageEx(_logos_class$previousSyntax$SBThermalController, @selector(showThermalAlertIfNecessary), (IMP)&_logos_method$previousSyntax$SBThermalController$showThermalAlertIfNecessary, (IMP*)&_logos_orig$previousSyntax$SBThermalController$showThermalAlertIfNecessary);MSHookMessageEx(_logos_class$previousSyntax$SBThermalController, @selector(isInSunlight), (IMP)&_logos_method$previousSyntax$SBThermalController$isInSunlight, (IMP*)&_logos_orig$previousSyntax$SBThermalController$isInSunlight);MSHookMessageEx(_logos_class$previousSyntax$SBThermalController, @selector(level), (IMP)&_logos_method$previousSyntax$SBThermalController$level, (IMP*)&_logos_orig$previousSyntax$SBThermalController$level);}
		}
	}

}
