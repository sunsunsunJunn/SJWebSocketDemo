//
//  SocketRocketUtility.h
//  SUN
//
//  Created by 孙俊 on 17/2/16.
//  Copyright © 2017年 SUN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SocketRocket.h>

@interface SocketRocketUtility : NSObject

/** 连接状态 */
@property (nonatomic,assign) SRReadyState socketReadyState;

+ (SocketRocketUtility *)instance;

-(void)SRWebSocketOpen;//开启连接
-(void)SRWebSocketClose;//关闭连接
- (void)sendData:(id)data;//发送数据

@end
