//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    /*NSDictionary* intermediate = @{SECTION: @"Intermediate", MENU: @[
                                    @{TITLE: @"Inter B", CLASS: @"InterB"}
                                  ]};*/
    NSDictionary* base = @{SECTION: @"Base", MENU: @[
                                    @{TITLE: @"Zoom Scale", CLASS: @"ZoomScale"}
                             ]};
    
    mainScreen.menu = @[base];
    
    mainScreen.title = @"UIScrollView";
    mainScreen.about = @"This is demo app ...";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
