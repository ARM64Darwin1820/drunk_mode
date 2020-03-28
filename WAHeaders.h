@interface WAChatBar : UIView {}
- (void)sendButtonTapped;
- (void)cameraButtonTapped;
- (void)attachMediaButtonTapped;
- (void)createGimmickPicker;
- (void)pttButtonPressed;
- (void)loadReplyContextView;
- (void)layoutTextInputContainerView;
//- (void)hideKeyboard;
//- (_Bool)_sendButtonHidden;
//- (void)setKeyboardInputView;
//- (void)loadReplyContextView;
//- (void)setUpPTTButton;
@end

@interface WAMessagingService : NSObject {}
- (_Bool)canSendMessages;
@end

@interface WAChatViewController : UIViewController {}
- (void)groupCallButtonTapped;
- (void)callButtonTapped;
- (void)videoCallButtonTapped;
@end
