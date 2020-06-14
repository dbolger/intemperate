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

%group latestSyntax
%hook SBThermalController

-(void)_setBlocked:(BOOL)arg1 {
	arg1 = NO;
	%orig(arg1);
}
-(BOOL)isThermalBlocked {
	return NO;
}
-(BOOL)_isBlocked {
	return NO;
}
-(BOOL)isInSunlight {
	return NO;
}
-(int)level {
	return 0;
}
%end
%end

%group previousSyntax
%hook SBThermalController
-(void)showThermalAlertIfNecessary {
	// Do nothing. I don't want a thermal alert.
}
%end
%end

%ctor {
	updatePrefs();
	if (isEnabled) {
		float version = [[[UIDevice currentDevice] systemVersion] floatValue];
		if (version >= 10) {
			%init(latestSyntax);
		} else if (version >= 8 && version < 10) {
			%init(previousSyntax);
		}
	}

}
