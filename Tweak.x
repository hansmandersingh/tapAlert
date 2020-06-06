#import <UIKit/UIKit.h>

%hook SBStatusBarManager

-(void)handleStatusBarTapWithEvent:(id)arg1  {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Wait" message:@"Are you sure you want to delete this.  This action cannot be undone" delegate:self cancelButtonTitle:@"Delete" otherButtonTitles:@"Cancel", nil];
	[alert show];

	%orig;
}



%end