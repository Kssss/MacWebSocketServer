#import "MyWebSocket.h"
#import "HTTPLogging.h"

// Log levels: off, error, warn, info, verbose
// Other flags : trace
static const int httpLogLevel = HTTP_LOG_LEVEL_WARN | HTTP_LOG_FLAG_TRACE;


@implementation MyWebSocket


/**
 socket 打开
 */
- (void)didOpen
{
	HTTPLogTrace();
	
	[super didOpen];
    
	[self sendMessage:@"App 发过来的消息： Welcome to my WebSocket"];
}


/**
 接受到消息

 @param msg json字符串
 */
- (void)didReceiveMessage:(NSString *)msg
{
	HTTPLogTrace2(@"%@[%p]: didReceiveMessage: %@", THIS_FILE, self, msg);
	
    
    [self sendMessage:[NSString stringWithFormat:@"App 发过来的消息：%@", [NSDate date]]];
}

/**
 socket关闭
 */
- (void)didClose
{
	HTTPLogTrace();
	
	[super didClose];
}

@end
