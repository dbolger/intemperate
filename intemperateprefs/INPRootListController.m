#import <Preferences/PSListController.h>
#import <spawn.h>
@interface INPRootListController : PSListController

@end

@implementation INPRootListController

- (NSArray *)specifiers {
        if (!_specifiers) {
                _specifiers = [self loadSpecifiersFromPlistName:@"Intemperate" target:self];
        }

        return _specifiers;
}
-(void)respring {
        pid_t pid;
        const char* args[] = {"sbreload", NULL};
        posix_spawn(&pid, "/usr/bin/sbreload", NULL, NULL, (char* const*)args, NULL);
}
-(void)openTwitterDM {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/messages/compose?recipient_id=765771568337264641&text=%28Please+describe+your+issue+here%29"] options:@{} completionHandler:nil];
}
-(void)openTwitter5px {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/o5pxels"] options:@{} completionHandler:nil];
}
-(void)openGitHub {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/fivepixels/intemperate"] options:@{} completionHandler:nil];
}
@end
