
//
//  Generate.m
//  generate
//
//  Created by guang on 15/4/10.
//  Copyright (c) 2015年 ifangchou. All rights reserved.
//

#import "Generate.h"
#import "Module.h"

@implementation Generate

- (void)argc:(int)argc argv:(const char * [])argv
{
//    Lion.system.logger.enabled = YES;
    
    [Lion.cli argc:argc argv:argv];
    
    Lion.cli.LINE( nil );
    Lion.cli.GREEN().LINE( @"-------------------------------------------------------" );
    Lion.cli.GREEN().LINE( @"--------------------------Generate---------------------" );
    Lion.cli.GREEN().LINE( @"-------------------------------------------------------" );

    Lion.cli.LINE( nil );
    
    [Module execute];
}

@end
