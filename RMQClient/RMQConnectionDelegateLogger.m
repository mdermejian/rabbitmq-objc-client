#import "RMQConnectionDelegateLogger.h"

@implementation RMQConnectionDelegateLogger

- (void)connection:(RMQConnection *)connection failedToConnectWithError:(NSError *)error {
    NSLog(@"Received connection: %@ failedToConnectWithError: %@", connection, error);
}

- (void)connection:(RMQConnection *)connection failedToOpenChannel:(id<RMQChannel>)channel error:(NSError *)error {
    NSLog(@"Received connection: %@ failedToOpenChannel: %@ error: %@", connection, channel, error);
}

- (void)connection:(RMQConnection *)connection failedToWriteWithError:(NSError *)error {
    NSLog(@"Received connection: %@ failedToWriteWithError: %@", connection, error);
}

- (void)connection:(RMQConnection *)connection disconnectedWithError:(NSError *)error {
    NSLog(@"Received connection: %@ disconnectedWithError: %@", connection, error);
}

- (void)channel:(id<RMQChannel>)channel error:(NSError *)error {
    NSLog(@"Received channel: %@ error: %@", channel, error);
}

@end
