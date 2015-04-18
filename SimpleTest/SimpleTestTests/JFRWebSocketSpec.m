//
//  JFRWebSocketSpec.m
//  SimpleTest
//
//  Created by David Grandinetti on 4/18/15.
//  Copyright 2015 Vluxe. All rights reserved.
//

#import "Specta.h"
#import "Expecta.h"
#import "JFRWebSocket.h"

SpecBegin(JFRWebSocket)

describe(@"JFRWebSocket", ^{

    context(@"when newly initialized", ^{
        it(@"can be initialized", ^{
            NSURL *url = [NSURL URLWithString:@"ws://localhost"];
            JFRWebSocket *sut = [[JFRWebSocket alloc] initWithURL:url protocols:@[ @"chat" ]];
            expect(sut).toNot.beNil();
        });

        it(@"defaults to not being connected", ^{
            NSURL *url = [NSURL URLWithString:@"ws://localhost"];
            JFRWebSocket *sut = [[JFRWebSocket alloc] initWithURL:url protocols:@[ @"chat" ]];
            expect(sut.isConnected).to.beFalsy();
        });

        it(@"defaults to not allow self signed certs", ^{
            NSURL *url = [NSURL URLWithString:@"ws://localhost"];
            JFRWebSocket *sut = [[JFRWebSocket alloc] initWithURL:url protocols:@[ @"chat" ]];
            expect(sut.selfSignedSSL).to.beFalsy();
        });
    });

});

SpecEnd
