//
//  ViewController.m
//  PrivateTestPro
//
//  Created by zuoyongyong on 2017/8/18.
//  Copyright © 2017年 zuoyongyong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //NSBundle *b = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/Message.framework"];
    //BOOL success = [b load];
    
//    Class NetworkController = NSClassFromString(@"NetworkController");
//    id nc = [NetworkController sharedInstance];
    
    NSBundle *a = [NSBundle bundleWithPath:@"System/Library/PrivateFrameworks/AppleAccount.framework"];
    NSBundle *b = [NSBundle bundleWithPath:@"System/Library/PrivateFrameworks/ApplePushService.framework"];
    NSBundle *perfer =[NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/PreferencesUI.framework"];
    if ([a load]) {
        if ([b load]) {
            NSLog(@"%s>>>>>>%d",__func__,__LINE__);
            Class aa = NSClassFromString(@"AADeviceInfo");
            id object_aa = [[aa alloc] init];
            NSLog(@"%s>>>>>>%d>>>>>>%@",__func__,__LINE__, (NSString *)[aa performSelector:@selector(udid)]);
            NSLog(@"%s>>>>>>%d>>>>>>%@",__func__,__LINE__, [aa performSelector:@selector(productVersion)]);
            NSLog(@"%s>>>>>>%d>>>>>>%@",__func__,__LINE__, [aa performSelector:@selector(userAgentHeader)]);
            NSLog(@"%s>>>>>>%d>>>>>>%@",__func__,__LINE__, [aa performSelector:@selector(osVersion)]);
            NSLog(@"%s>>>>>>%d>>>>>>%@",__func__,__LINE__, [aa performSelector:@selector(appleIDClientIdentifier)]);
            NSLog(@"%s>>>>>>%d>>>>>>%@",__func__,__LINE__, [aa performSelector:@selector(clientInfoHeader)]);
            NSLog(@"%s>>>>>>%d>>>>>>%@",__func__,__LINE__, [aa performSelector:@selector(serialNumber)]);
            NSLog(@"%s>>>>>>%d>>>>>>%@",__func__,__LINE__, [aa performSelector:@selector(infoDictionary)]);
            NSLog(@"udid is %@", [object_aa performSelector:@selector(serialNumber)]);
            //            NSLog(@"%s>>>>>>%d>>>>>>%@",__func__,__LINE__, [aa performSelector:@selector(appleIDClientIdentifier)]);
            
        }
        
    }
    
    
    NSBundle *authkit = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/AuthKit.framework"];
    if([authkit load])
    {
        Class AKDeviceClass = NSClassFromString(@"AKDevice");
        
        id object_akDevice = [[AKDeviceClass alloc] init];
        
        NSLog(@"unique id is %@", [object_akDevice performSelector:@selector(uniqueDeviceIdentifier)]);
        
        NSLog(@"modelNumber is %@", [object_akDevice performSelector:@selector(modelNumber)]);
        
        NSLog(@"serialNumber is %@",[object_akDevice performSelector:@selector(serialNumber)]);
        
        NSLog(@"serializedData is %@", [object_akDevice performSelector:@selector(serializedData)]);
        
        NSLog(@"localUserUUID is %@", [object_akDevice performSelector:@selector(localUserUUID)]);
        
        NSLog(@"userChosenName is %@", [object_akDevice performSelector:@selector(userChosenName)]);
        
        NSLog(@"MLBSerialNumber is %@", [object_akDevice performSelector:@selector(MLBSerialNumber)]);
        
        NSLog(@"ROMAddress is %@", [object_akDevice performSelector:@selector(ROMAddress)]);
        
        NSLog(@"integratedCircuitCardIdentifier is %@", [object_akDevice performSelector:@selector(integratedCircuitCardIdentifier)]);
        
        //NSLog(@"modelNumber is %@", [AKDeviceClass performSelector:@selector(modelNumber)]);
        
        NSLog(@"_hardwareModel is %@", [AKDeviceClass performSelector:@selector(_hardwareModel)]);
        
        NSLog(@"_lookupMLBSerialNumber is %@", [AKDeviceClass performSelector:@selector(_lookupMLBSerialNumber)]);
        
        NSLog(@"currentDevice is %@", [AKDeviceClass performSelector:@selector(currentDevice)]);
        
        if([object_akDevice respondsToSelector:@selector(setMLBSerialNumber:)])
        {
            [object_akDevice performSelector:@selector(setMLBSerialNumber:) withObject:@"testSerialNumber"];
            
             NSLog(@"MLBSerialNumber is %@", [object_akDevice performSelector:@selector(MLBSerialNumber)]);
        }
        
        if([object_akDevice respondsToSelector:@selector(setUniqueDeviceIdentifier:)])
        {
            [object_akDevice performSelector:@selector(setUniqueDeviceIdentifier:) withObject:@"new devie identifier"];
            
            NSLog(@"unique DeviceIdentifier is %@", [object_akDevice performSelector:@selector(uniqueDeviceIdentifier)]);
        }
        
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
