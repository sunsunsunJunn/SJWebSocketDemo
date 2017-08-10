//
//  ViewController.m
//  WebSocketDemo
//
//  Created by 孙俊 on 17/2/16.
//  Copyright © 2017年 newbike. All rights reserved.
//

#import "ViewController.h"
#import "SocketRocketUtility.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[SocketRocketUtility instance] SRWebSocketOpen];//打开soket
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SRWebSocketDidOpen) name:@"kWebSocketDidOpenNote" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SRWebSocketDidReceiveMsg:) name:@"kWebSocketdidReceiveMessageNote" object:nil];

    
//    [[SocketRocketUtility instance] SRWebSocketClose]; 在需要得地方 关闭socket
    
}

- (void)SRWebSocketDidOpen {
    NSLog(@"开启成功");
    //在成功后需要做的操作。。。
        
}

- (void)SRWebSocketDidReceiveMsg:(NSNotification *)note {
    //收到服务端发送过来的消息
    NSString * message = note.object;
    NSLog(@"%@",message);
}

@end
