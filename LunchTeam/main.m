//
//  main.m
//  LunchTeam
//
//  Created by Yoshiyuki MIYAGI on 2013/01/09.
//  Copyright (c) 2013年 Yoshiyuki MIYAGI. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}
