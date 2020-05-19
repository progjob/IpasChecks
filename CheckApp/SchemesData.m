//
//  SchemesData.m
//  CheckApp
//
//  Created by Dmitry on 19/05/2020.
//  Copyright © 2020 xxx. All rights reserved.
//

#import "SchemesData.h"

@implementation SchemesData

+ (NSArray *)bundles {
    return @[
        @{
            @"name": @"Business",
            @"id": @"com.microsoft.lync2013.iphone",
            @"schemes" : self.Business,
        },
        @{
            @"name": @"Discord",
            @"id": @"com.hammerandchisel.discord",
            @"schemes" : self.Discord,
        },
        @{
            @"name": @"Hangouts",
            @"id": @"om.google.hangouts",
            @"schemes" : self.Hangouts,
        },
        @{
            @"name": @"FBMessenger",
            @"id": @"com.facebook.Messenger",
            @"schemes" : self.FBMess,
        },
        @{
            @"name": @"Signal",
            @"id": @"org.whispersystems.signal",
            @"schemes" : self.Signal,
        },
        @{
            @"name": @"Slack",
            @"id": @"com.tinyspeck.chatlyio",
            @"schemes" : self.Slack,
        },
        @{
            @"name": @"Teams",
            @"id":@"com.microsoft.skype.teams",
            @"schemes" : self.Teams,
        },
        @{
            @"name": @"Threema",
            @"id": @"ch.threema.work.iapp",
            @"schemes" : self.Threema,
        },
        @{
            @"name": @"VIPole",
            @"id": @"com.vipole.vipoleclient",
            @"schemes" : self.VIPole,
        },
        @{
            @"name": @"Wee",
            @"id": @"com.tencent.xin",
            @"schemes" : self.Wee,
        },
        @{
            @"name": @"Zoom",
            @"id": @"us.zoom.videomeetings",
            @"schemes" : self.Zoom,
        },
        @{
            @"name": @"MTS",
            @"id":@"com.mts.communications",
            @"schemes" : self.MTS,
        },
    ];
}

+ (NSArray *)Business {
    return @[
@"lync-intunemam",
@"lync",
@"ms-sfb-df",
@"ms-sfb-tp",
@"ms-sfb-intunemam",
@"ms-sfb",
@"sip-intunemam",
@"sip",
    ];
}

+ (NSArray *)Discord {
    return @[
@"com.hammerandchisel.discord",
    ];
}

+ (NSArray *)FBMess {
    return @[
        @"fb-messenger-share-api",
        @"fb-messenger-neue",
        @"fb-messenger-diode",
        @"fb-messenger",
        @"fb-messenger-public",
        @"fb237759909591655",
        @"fb-messenger-share",
        @"fb-messenger-voip",
        @"fb-messenger-group-thread",
        @"fb-messenger-bishop",
        @"fb-messenger-platform-20150714",
        @"fb-messenger-platform-20150305",
        @"fb-messenger-platform-20150218",
        @"fb-messenger-platform-20150128",
        @"fb-messenger-platform",
        @"fb-messenger-api20131028",
        @"fb-messenger-api20140131",
        @"fb-messenger-api20140301",
        @"fb-messenger-api20140430",
        @"fb-messenger-api",
        @"fb-messenger-share-api",
        @"fb-messenger-public",
        @"fb-messenger-family",
        @"fb-messenger-neue",
        @"fb-page-messages",
        @"fb-messenger-diode",
        @"fb-messenger",
        @"fb237759909591655",
        @"fb-messenger-share",
        @"fb-messenger-voip",
        @"fb-messenger-platform-20150714",
        @"fb-messenger-platform-20150305",
        @"fb-messenger-platform-20150218",
        @"fb-messenger-platform-20150128",
        @"fb-messenger-platform",
        @"fb-messenger-group-thread",
        @"fb-events-share",
        @"fb-messenger-quicksilver-20170327",
        @"fb-messenger-bishop",
        @"fb-messenger-whatsapp-2",
        @"fb-messenger-sls",
        @"fb-messenger-cw",
        @"fb-messenger-nbf",
        @"fb-messenger-prefill-20191211",



    ];
}

+ (NSArray *)Hangouts {
    return @[
        @"com.google.hangouts",
        @"com.google.hangouts-v3",
        @"com.google.sso.183697946088-m3jnlsqshjhh5lbvg05k46q1k4qqtrgn",

    ];
}

+ (NSArray *)Threema {
    return @[
        @"threemawork",

    ];
}

+ (NSArray *)Teams {
    return @[
        @"appcenter-e7c87d62-956b-468f-ab23-1e33f6920b6c",
        @"msteams",
        @"msteams-intunemam",
        @"hae7c87d62956b468fab231e33f6920b6c",
        @"hae7c87d62956b468fab231e33f6920b6c-intunemam",
        @"x-msauth-ms-st",
        @"x-msauth-ms-st-intunemam",
        @"msteams-fl",
    ];
}

+ (NSArray *)Slack {
    return @[
        
        @"slack",
        @"com.googleusercontent.apps.331588195051-jsmlcgdl2li407e48kjpjqgrb50k7u7c",

    ];
}

+ (NSArray *)Signal {
    return @[
        @"sgnl",

    ];
}

+ (NSArray *)VIPole {
    return @[
        @"VIPole",

    ];
}

+ (NSArray *)Wee {
    return @[
        @"wexinVideoAPI",
        @"weixin",
        @"weixinapp",
        @"fb290293790992170",
        @"wechat",
        @"QQ41C152CF",
        @"prefs",
        @"wx703",
        @"weixinULAPI",

    ];
}

+ (NSArray *)Zoom {
    return @[
        @"zoomus",
        @"zoomphonecall",
        @"AasDd9D133C-B9d78-4Cd10-A9f9fn0-92B8jCA6ko7F32F",
        @"wxbcc2200e9019ab4f",
        @"wx168a26bec2905463",
    ];
}

+ (NSArray *)MTS {
    return @[
    ];
}


@end



