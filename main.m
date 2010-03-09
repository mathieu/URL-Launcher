#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/NSURL.h>
#import <AppKit/NSWorkspace.h>

int main (int argc, const char * argv[]) 
{
    // insert code here...
    CFShow(CFSTR("Opening url\n"));
    NSURL* url = [NSURL URLWithString:@"http://www.cstb.fr"];
    [[NSWorkspace sharedWorkspace] openURL:url];
    return 0;
}
