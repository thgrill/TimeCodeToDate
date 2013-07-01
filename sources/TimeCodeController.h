//
//  TimeCodeController.h
//  TimeCodeToDate
//
//  Created by Thomas Grill on  02/15/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface TimeCodeController : NSWindowController {
	IBOutlet NSTextField * txtTimecode;
	IBOutlet NSTextField * txtDate;
	
}

- (IBAction) timecodeToDate: (id) sender;
- (IBAction) dateToTimecode: (id) sender;
- (IBAction) now: (id) sender;
@end
