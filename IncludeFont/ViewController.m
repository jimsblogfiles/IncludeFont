//
//  ViewController.m
//  IncludeFont
//
//  Created by James Border on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];
	
	/*

	Add font to the project, make sure the font file shows up under Build Phases -> Copy Bundle Resources
	 
	The font FILE NAME needs to be added to as a "Fonts provided by application" XXXX-Info.plist

	Item 0 - string - FontName.xxx

	// open as source code:
	 <key>UIAppFonts</key>
	 <array>
	 <string>Skwirl.ttf</string>
	 </array>
	 
	*/

	//	 Then use the font with the font name
	UITextView *myTextView = [[UITextView alloc] initWithFrame:self.view.frame];
	[myTextView setBackgroundColor:[UIColor clearColor]];
	[myTextView setTextAlignment:UITextAlignmentLeft];
	[myTextView setFont:[UIFont fontWithName:@"Skwirl" size:14]];
	[myTextView setEditable:NO];		
	[self.view addSubview:myTextView];
	[myTextView setText:@"Skwirl by Chicken Billy \nNote of the author:\nCopyright 2012 ChickenBilly.com. All rights reserved.\nFirst seen on DaFont: 05-27-2012\nhttp://www.dafont.com/skwirl.font"];
	
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
