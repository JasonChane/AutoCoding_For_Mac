//
//  ViewController.m
//  AutoCoding_For_Mac
//
//  Created by Rich on 15/11/21.
//  Copyright © 2015年 Rich. All rights reserved.
//

#import "ViewController.h"
#import "SchemaGenerator.h"

@interface ViewController ()

@property (weak) IBOutlet NSTextField *inputPathTextField;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.


    
    
}

- (IBAction)schema_build_For_mac:(id)sender {
    
    NSLog(@"%@",[self.inputPathTextField stringValue]);
    
    NSString * inputPath = [self.inputPathTextField stringValue];//json路径
    
    
    SchemaGenerator * generator = [[SchemaGenerator alloc] init];
    generator.inputPath = [inputPath stringByDeletingLastPathComponent];
    generator.inputFile = [inputPath lastPathComponent];
    
    BOOL succeed = [generator generate];//组织.h和.m
    
    if ( NO == succeed )
    {
        if ( generator.errorLine )
        {
            Lion.cli.RED().LINE( nil );
            Lion.cli.RED().LINE( @"line #%d: %@", generator.errorLine, generator.errorDesc );
            Lion.cli.RED().LINE( nil );
        }
        else
        {
            Lion.cli.RED().LINE( nil );
            Lion.cli.RED().LINE( @"%@", generator.errorDesc );
            Lion.cli.RED().LINE( nil );
        }
    }
    else
    {
        for ( NSString * file in generator.results )
        {
            Lion.cli.ECHO( @"%@", file );
            Lion.cli.GREEN().LINE( @"\tDONE" );
        }
        
        Lion.cli.GREEN().LINE( nil );
        Lion.cli.GREEN().LINE( @"Total %d file(s) generated", generator.results.count );
        Lion.cli.GREEN().LINE( nil );
    }
    
    
    
}

- (IBAction)open_obejct_file:(id)sender {
    NSTask *task=[NSTask new];
    task.launchPath=@"/bin/cp";
    task.arguments=@[@"~/Desktop/自动过站.scpt ",@"smb://10.10.16.18/tpkc/r900"];
    [task launch];
    [task waitUntilExit];
    
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
