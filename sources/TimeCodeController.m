//
//  TimeCodeController.m
//  TimeCodeToDate
//
//  Created by Thomas Grill on  02/15/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "TimeCodeController.h"


@implementation TimeCodeController

- (IBAction) timecodeToDate: (id) sender
{
	double timecode = [txtTimecode doubleValue];
	NSDate * d = [NSDate dateWithTimeIntervalSince1970:timecode];
	
	//NSString *timestamp = [NSString stringWithFormat:@"%d", (long)[[NSDate date] timeIntervalSince1970]];
	[txtDate setStringValue:[d description]];
}

- (IBAction) dateToTimecode: (id) sender{
	
	NSDate * d = [NSDate dateWithNaturalLanguageString:[txtDate stringValue]];
	[txtTimecode setDoubleValue:[d timeIntervalSince1970]];
	[txtDate setStringValue:[d description]];
}

- (IBAction) now: (id) sender{
	
	NSDate * d = [NSDate date];
	[txtTimecode setDoubleValue:(long)[d timeIntervalSince1970]];
	[txtDate setStringValue:[d description]];
}
@end
