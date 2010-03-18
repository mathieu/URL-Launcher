#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/NSURL.h>
#import <AppKit/NSWorkspace.h>
#import <Cocoa/Cocoa.h>

int main (int argc, const char * argv[]) 
{
    
    NSLog(@"Reef4 launcher...");
	
	NSBundle* mainBundle = [NSBundle mainBundle];
	
	NSString* reef4UrlStr = [mainBundle objectForInfoDictionaryKey:@"Reef4Url"];
	
	NSLog(@"Reef4Url=%@", reef4UrlStr);
	
	NSURL* url = [NSURL URLWithString: reef4UrlStr];
    [[NSWorkspace sharedWorkspace] openURL:url]; 
	
    return 0;
}
