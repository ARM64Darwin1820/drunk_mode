#import "PSSpecifier.h"
#import "WAHeaders.h"

#define PreferencesPlist @"/var/mobile/Library/Preferences/me.qusic.drunkmode.plist"
#define DrunkModeKey @"DrunkMode"

static BOOL getDrunkMode()
{
    NSDictionary *preferences = [NSDictionary dictionaryWithContentsOfFile:PreferencesPlist];
    return [[preferences objectForKey:DrunkModeKey]boolValue];
}

static void setDrunkMode(BOOL value)
{
    NSMutableDictionary *preferences = [NSMutableDictionary dictionary];
    [preferences addEntriesFromDictionary:[NSDictionary dictionaryWithContentsOfFile:PreferencesPlist]];
    [preferences setObject:[NSNumber numberWithBool:value] forKey:DrunkModeKey];
    [preferences writeToFile:PreferencesPlist atomically:YES];
}

%hook CKChatController
-(void)messageEntryViewSendButtonHit:(id)messageEntryView {
    if (getDrunkMode()) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Drunk Mode"
                                                                         message:@"Go Home"
                                                                  preferredStyle:UIAlertControllerStyleAlert];
//We add buttons to the alert controller by creating UIAlertActions:
UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Whaat???"
                                                   style:UIAlertActionStyleDefault
                                                 handler:nil];
[alertController addAction:actionOk];
[self presentViewController:alertController animated:YES completion:nil];
    } else {
        %orig();
    }
}


%end


/*
 WhatsApp Stuff [WIP]
 Credit for the part that displays the alert and the WAHeaders.h file  goes to Reddit User /u/Chrisnba24 (https://github.com/chrislopez24/drunk_mode/)
 Seriously, I don't know shit about writing tweaks, he did all the hard work!
 */

//Hooks

%hook WAChatBar

UIWindow *window = [[[UIApplication sharedApplication] delegate] window];

-(void)sendButtonTapped:(id)arg1 {
    if (getDrunkMode()) {
        // TODO: This really needs to be refactored into a function createAlert
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Drunk Mode"
                                                               message:@"Go Home"
                                                               preferredStyle:UIAlertControllerStyleAlert];

        //We add buttons to the alert controller by creating UIAlertActions:
        UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Whaat???"
                                                style:UIAlertActionStyleDefault
                                                handler:nil];
        [alertController addAction:actionOk];
        [self.window makeKeyAndVisible];
        [self.window.rootViewController presentViewController:alertController animated:YES completion:nil];
        
   } else {
        %orig();
   }
}


-(void)cameraButtonTapped:(id)arg1 {
    if (getDrunkMode()) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Drunk Mode"
                                                               message:@"Go Home"
                                                               preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Whaat???"
                                                style:UIAlertActionStyleDefault
                                                handler:nil];
        [alertController addAction:actionOk];
        [self.window makeKeyAndVisible];
        [self.window.rootViewController presentViewController:alertController animated:YES completion:nil];

   } else {
        %orig();
   }
}


-(void)attachMediaButtonTapped:(id)arg1 {
    if (getDrunkMode()) {
       UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Drunk Mode"
                                                               message:@"Go Home"
                                                               preferredStyle:UIAlertControllerStyleAlert];

       UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Whaat???"
                                                style:UIAlertActionStyleDefault
                                                handler:nil];
      [alertController addAction:actionOk];
      [self.window makeKeyAndVisible];
      [self.window.rootViewController presentViewController:alertController animated:YES completion:nil];

   } else {
        %orig();
   }
}

- (void)createGimmickPicker {
    if (getDrunkMode()) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Drunk Mode"
                                                               message:@"Go Home"
                                                               preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Whaat???"
                                                style:UIAlertActionStyleDefault
                                                handler:nil];
        [alertController addAction:actionOk];
        [self.window makeKeyAndVisible];
        [self.window.rootViewController presentViewController:alertController animated:YES completion:nil];
    } else {
        %orig();
    }
}

- (void)pttButtonPressed:(id)arg1 withEvent:(id)arg2 {
    if (getDrunkMode()) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Drunk Mode"
                                                               message:@"Go Home"
                                                               preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Whaat???"
                                                style:UIAlertActionStyleDefault
                                                handler:nil];
        [alertController addAction:actionOk];
        [self.window makeKeyAndVisible];
        [self.window.rootViewController presentViewController:alertController animated:YES completion:nil];
    } else {
        %orig();
    }
}

%end


%hook WAChatViewController

- (void)groupCallButtonTapped:(id)arg1 {
   if (getDrunkMode()) {
       UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Drunk Mode"
                                                              message:@"Go Home"
                                                              preferredStyle:UIAlertControllerStyleAlert];

       UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Whaat???"
                                               style:UIAlertActionStyleDefault
                                               handler:nil];
       [alertController addAction:actionOk];
       [self presentViewController:alertController animated:YES completion:nil];
   } else {
       %orig();
   }
}

- (void)callButtonTapped:(id)arg1 {
   if (getDrunkMode()) {
       UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Drunk Mode"
                                                              message:@"Go Home"
                                                              preferredStyle:UIAlertControllerStyleAlert];

       UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Whaat???"
                                               style:UIAlertActionStyleDefault
                                               handler:nil];
       [alertController addAction:actionOk];
       [self presentViewController:alertController animated:YES completion:nil];
   } else {
       %orig();
   }
}

- (void)videoCallButtonTapped:(id)arg1 {
   if (getDrunkMode()) {
       UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Drunk Mode"
                                                              message:@"Go Home"
                                                              preferredStyle:UIAlertControllerStyleAlert];

       UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Whaat???"
                                               style:UIAlertActionStyleDefault
                                               handler:nil];
       [alertController addAction:actionOk];
       [self presentViewController:alertController animated:YES completion:nil];
   } else {
       %orig();
   }
}
%end

/*
 WhatsApp Stuff End
 */


%hook PSUIPrefsListController
-(NSMutableArray *) specifiers {

    NSMutableArray *specifiers = %orig;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        PSSpecifier *specifier = [PSSpecifier preferenceSpecifierNamed:@"Drunk Mode"
                                                                                      target:self
                                                                                         set:@selector(setDrunkMode:specifier:)
                                                                                         get:@selector(getDrunkMode:)
                                                                                      detail:Nil
                                                                                        cell:PSSwitchCell
                                                                                        edit:Nil];
        [specifier setIdentifier:DrunkModeKey];
        [specifier setProperty:[NSNumber numberWithBool:YES] forKey:@"enabled"];
        [specifier setProperty:[NSNumber numberWithBool:YES] forKey:@"alternateColors"];
        [specifier setProperty:[UIImage imageWithContentsOfFile:@"/Library/Application Support/DrunkMode/DrunkMode.png"] forKey:@"iconImage"];
        [specifier setProperty:@"Settings-DrunkMode" forKey:@"iconCache"];
        
        [specifiers insertObject:specifier atIndex:2];
    });
    
    return specifiers;
}

%new -(id)getDrunkMode:(PSSpecifier*)specifier {
    return [NSNumber numberWithBool:getDrunkMode()];
}

%new -(void)setDrunkMode:(id)value specifier:(PSSpecifier *) specifier {
    setDrunkMode([value boolValue]);
}

%end
