# SJWebSocketDemo

使用SocketRocket 进行websocket长连接

我使用的是pod管理库 所以在podfile中加入
pod 'SocketRocket'

在使用命令行工具cd到当前工程 安装
pod install


打开使用 

`
[[SocketRocketUtility instance] SRWebSocketOpenWithUrlStrig:@"写入自己后台的地址"];
`

关闭使用

`
[[SocketRocketUtility instance] SRWebSocketClose]; 
`

打开成功会收到通知需要在前面先监听

`
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SRWebSocketDidOpen) name:kWebSocketDidOpenNote object:nil];
`

收到服务器发送的消息会收到通知需要在前面先监听

`
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SRWebSocketDidReceiveMsg:) name:kWebSocketDidCloseNote object:nil];
`

好用的话不要吝啬你的star哦 ：）

