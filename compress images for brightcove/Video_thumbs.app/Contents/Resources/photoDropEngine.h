/* photoDropEngine */

#import <Cocoa/Cocoa.h>

@interface photoDropEngine : NSObject {

	IBOutlet id progressWindow;
	IBOutlet id progressBar;
	IBOutlet id descriptionText;
	IBOutlet id currentFile;
	IBOutlet id timeRemaining;
	
	BOOL dropletHasRun;
	BOOL useDropletTypes;
	BOOL useFileSuffix;
	
	NSDictionary *fileAttributes;
	NSString *fileSuffix;
	NSArray *dropletAttributes;
	NSArray *dropletTypes;
}

- (void) applicationDidFinishLaunching:(NSNotification *) aNotification;
- (void) application:(NSApplication *) sender openFiles:(NSArray *) files;
- (BOOL) loadDropletAttributes;
- (void) runSipsOnFile:(NSString *) pathToOriginalFile saveTo:(NSString *) pathToNewFile;

SInt32 GetSystemVersion();

@end
