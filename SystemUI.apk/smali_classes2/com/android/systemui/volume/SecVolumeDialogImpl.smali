.class public Lcom/android/systemui/volume/SecVolumeDialogImpl;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$H;
    }
.end annotation


# static fields
.field public static final IS_TABLET_DEVICE:Z

.field private static SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VOICE_ENABLE_URI:Landroid/net/Uri;

.field private static mIsSafetyWarningShowing:Z

.field private static sCoverOpened:Z

.field private static sCoverType:I

.field private static final sHardwareAccelerated:Z

.field private static sIsDexMode:Z

.field private static final sPrevSystemRendererDisabled:Z


# instance fields
.field private final DISABLED_ALPHA_VALUE:F

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAccessibility:Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveChildIndex:I

.field private mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

.field private mActiveStream:I

.field private mActiveStreamChanged:Z

.field private mAfterHeight:I

.field private mAlphaBackground:Landroid/graphics/drawable/Drawable;

.field private mApp:Lcom/android/systemui/SystemUIApplication;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mBTDeviceName:Ljava/lang/String;

.field private mBTScoDeviceName:Ljava/lang/String;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBixbyStatus:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

.field private mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseAnimator:Landroid/animation/ValueAnimator;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCutOutHeight:I

.field private mDefaultVolumeControlSwitch:Landroid/widget/Switch;

.field private mDensity:I

.field private final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field private mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

.field private mDialogBackground:Landroid/view/ViewGroup;

.field private mDialogBottomView:Landroid/view/ViewGroup;

.field private mDialogContentContainerView:Landroid/view/ViewGroup;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogDndView:Landroid/view/ViewGroup;

.field private mDialogDndViewBG:Landroid/view/ViewGroup;

.field private mDialogSmallBackground:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDownY:F

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mEarProtectLevel:I

.field private mEarProtectLimit:I

.field private mExpandAnimator:Landroid/animation/ValueAnimator;

.field private mExpandCollapseAnimating:Z

.field private mExpanded:Z

.field private mFixedVolumeToast:Landroid/widget/Toast;

.field private mFlingTriggered:Z

.field private mGhostView:Landroid/view/View;

.field private final mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

.field private mHasCutOutDisplay:Z

.field private mHfp:Landroid/bluetooth/BluetoothHeadset;

.field private mHovering:Z

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconMutedColor:Landroid/content/res/ColorStateList;

.field private mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

.field private mIsAllSoundOff:Z

.field private mIsSafeMediaVolumeDeviceOn:Z

.field private mIsSafeMediaVolumeDeviceOnForMultiSound:Z

.field private mIsShowingSCoverWarning:Z

.field private mIsSwipe:Z

.field private mIsTalkbackEnabled:Z

.field private mIsTraking:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mMaxH:I

.field private mMaxSmartViewVol:I

.field private mMediaControlView:Landroid/view/ViewGroup;

.field private mMinH:I

.field private mMinSmartViewVol:I

.field private mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private mNeedScroll:Z

.field private mNightMode:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mOrientation:I

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private mPinDevice:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousBixbyStatus:I

.field private mRemoteControlMaxVolume:I

.field private mRequestedHeight:I

.field private final mResources:Landroid/content/res/Resources;

.field private mRowHeight:I

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mRowsSmallDialog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mScrollFromH:I

.field private mScrollHandlerView:Landroid/view/View;

.field private mScrollToH:I

.field private mScrollView:Lcom/android/systemui/volume/SecVolumeDialogView;

.field private final mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

.field private mShowA11yStream:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

.field private mSmallDialogContentParent:Landroid/view/ViewGroup;

.field private mSmallDialogContentView:Landroid/view/ViewGroup;

.field private mSmallDialogPaddingLeft:I

.field private mSmallDialogPaddingRight:I

.field private mSmallDialogPaddingTop:I

.field private mSmallDialogView:Landroid/view/ViewGroup;

.field private mSmartViewRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

.field private mSmartViewTouchToast:Landroid/widget/Toast;

.field private mSmartViewisMute:Z

.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSwipeDistance:I

.field private mUiMode:I

.field private mVisibleRowIndex:I

.field private final mVoiceCapable:Z

.field private mVolumeLimiterDialog:Landroid/app/AlertDialog;

.field private mWindowType:I

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    const-string v0, "ro.build.characteristics"

    const-string v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->IS_TABLET_DEVICE:Z

    sget-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sPrevSystemRendererDisabled:Z

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sHardwareAccelerated:Z

    const-string v0, "content://com.samsung.android.bixby.agent.settings/bixby_voice_isenable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->VOICE_ENABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsSmallDialog:Ljava/util/List;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTalkbackEnabled:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$1;)V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    iput-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSilentMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHovering:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundID:I

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    const v3, 0x3ecccccd    # 0.4f

    iput v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->DISABLED_ALPHA_VALUE:F

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveChildIndex:I

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVisibleRowIndex:I

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLimit:I

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevel:I

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMinSmartViewVol:I

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxSmartViewVol:I

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewisMute:Z

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSwipe:Z

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTraking:Z

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPreviousBixbyStatus:I

    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$19;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x11200e0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVoiceCapable:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->makeSound()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateTintColor()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateDefaultTintColor()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x1040219

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHasCutOutDisplay:Z

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initCoverManager(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->registerBroadcastReceiver()V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/SystemUIApplication;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v3}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v2, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v4, v1, v5}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    const-class v4, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/DesktopManager;

    iput-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->hideSmallDialog()V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDownY:F

    return v0
.end method

.method static synthetic access$10002(Lcom/android/systemui/volume/SecVolumeDialogImpl;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDownY:F

    return p1
.end method

.method static synthetic access$1002(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTScoDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSwipe:Z

    return v0
.end method

.method static synthetic access$10102(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSwipe:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTraking:Z

    return v0
.end method

.method static synthetic access$10202(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTraking:Z

    return p1
.end method

.method static synthetic access$10300(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollFromH:I

    return v0
.end method

.method static synthetic access$10302(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollFromH:I

    return p1
.end method

.method static synthetic access$10400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSwipeDistance:I

    return v0
.end method

.method static synthetic access$10500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->expandcollapseDialogAnim()V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollView:Lcom/android/systemui/volume/SecVolumeDialogView;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->prepareGhostView()V

    return-void
.end method

.method static synthetic access$10902(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollToH:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMinSmartViewVol:I

    return v0
.end method

.method static synthetic access$11000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMinH:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMinSmartViewVol:I

    return p1
.end method

.method static synthetic access$11100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxH:I

    return v0
.end method

.method static synthetic access$11200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    return v0
.end method

.method static synthetic access$11400(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->adjustDialogViewPadding()V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHasCutOutDisplay:Z

    return v0
.end method

.method static synthetic access$11700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->adjustSmallDialogViewPadding()V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateBackgroundH()V

    return-void
.end method

.method static synthetic access$11900(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getImpliedMediaVolumeLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    return-object v0
.end method

.method static synthetic access$12000(Landroid/widget/SeekBar;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$12100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTalkbackEnabled:Z

    return v0
.end method

.method static synthetic access$12302(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTalkbackEnabled:Z

    return p1
.end method

.method static synthetic access$12400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic access$12602(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    return p1
.end method

.method static synthetic access$12700(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->allSoundMuteChanged(Z)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxSmartViewVol:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxSmartViewVol:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getSmartViewIcon(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewisMute:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewisMute:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconMutedColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->hideScrollBackground()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->startViewAlphaAnim(Z)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHovering:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogSmallBackground:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->showSmartViewTouchToast()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    return p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedH(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$5802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    return p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onDismissSafeVolumeWarning()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewTouchToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mUiMode:I

    return v0
.end method

.method static synthetic access$6702(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mUiMode:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mOrientation:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mOrientation:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDensity:I

    return v0
.end method

.method static synthetic access$7002(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDensity:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNightMode:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isNightMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initDialog()V

    return-void
.end method

.method static synthetic access$7400()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    return v0
.end method

.method static synthetic access$7500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setDialogWindowGravity()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$7800(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$7902(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic access$8000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->playSoundH()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->stopSoundH()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->themeChanged()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->showVolumeLimiterDialog()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->zenModeChanged()V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->collapseDialog()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setVolumeContentHeight(I)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/media/SemSoundAssistantManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/systemui/volume/SecVolumeDialogImpl;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    return v0
.end method

.method static synthetic access$9500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    return v0
.end method

.method static synthetic access$9502(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    return p1
.end method

.method static synthetic access$9600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFlingTriggered:Z

    return v0
.end method

.method static synthetic access$9602(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFlingTriggered:Z

    return p1
.end method

.method static synthetic access$9700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->expandDialogAnim()V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->collapseDialogAnim()V

    return-void
.end method

.method private addAdditionalPanels()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a063d

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a063e

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndViewBG:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->checkDndViewShow()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a063c

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0636

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$uKLkdNPJDTkJWtJrNRCWdwwswNs;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$uKLkdNPJDTkJWtJrNRCWdwwswNs;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0635

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$T98Lnxh7ZEmKbn64hcP5TRBnFew;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$T98Lnxh7ZEmKbn64hcP5TRBnFew;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0634

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private addExistingRows()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3500(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Z

    move-result v8

    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initRow(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addExistingRowsSmall()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsSmallDialog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsSmallDialog:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3500(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Z

    move-result v8

    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initRow_small(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addRow(IIIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZZ)V

    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 8

    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl$1;)V

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initRow(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_0
    return-void
.end method

.method private addRow_small(IIIZ)V
    .locals 8

    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl$1;)V

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initRow_small(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsSmallDialog:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private adjustDialogViewPadding()V
    .locals 8

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "adjustDialogViewPadding()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopPadding()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogSmallBackground:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v6, v2, :cond_0

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f07081e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f07080a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopMargin()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogSmallBackground:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private adjustGhostViewPosition(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopPadding()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopMargin()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBottomView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollView:Lcom/android/systemui/volume/SecVolumeDialogView;

    invoke-virtual {v3}, Lcom/android/systemui/volume/SecVolumeDialogView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    add-int v7, v4, v2

    add-int/2addr v7, v0

    if-gt p1, v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    sub-int v8, p1, v2

    sub-int/2addr v8, v0

    sub-int/2addr v8, v1

    sub-int/2addr v8, v5

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setAlpha(F)V

    sget-boolean v7, Lcom/android/systemui/volume/D;->ENG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjust mGhostView. alpha="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", bottom="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", bot="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",pad="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", gh="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", scrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mGhostView.getBottom()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mGhostView.getTop()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private adjustSmallDialogViewPadding()V
    .locals 9

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updatePaddingForSmallDialog()V

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSmallDialogViewPadding cutout - paddingLeft = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogPaddingLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", paddingRight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogPaddingRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", paddingTop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogPaddingTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070835

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070830

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogPaddingLeft:I

    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogPaddingRight:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f070832

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-ge v3, v0, :cond_0

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogView:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogPaddingTop:I

    add-int/2addr v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7, v8, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private allSoundMuteChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->checkDndViewShow()V

    return-void
.end method

.method private checkDndViewShow()V
    .locals 5

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-static {v1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v1, :cond_2

    const v1, 0x7f120cad

    goto :goto_0

    :cond_2
    const v1, 0x7f120c9b

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0643

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndViewBG:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    const/4 v0, 0x0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndViewBG:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private collapseDialog()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollFromH:I

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollToH:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollFromH:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollToH:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setVolumeContentHeight(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedH(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->reorderDialogContentView()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateWindowState()V

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->startViewAlphaAnim(Z)V

    return-void
.end method

.method private collapseDialogAnim()V
    .locals 3

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collapseDialogAnim() mRequestedHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRequestedHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "+, mDialogBackground.getHeight()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRequestedHeight:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMinH:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$14;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$15;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const-string v0, "601"

    const-string v1, "6012"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "collapseDialogAnim()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private computeTimeoutH()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->access$3600(Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;)Z

    move-result v0

    const/16 v1, 0x1388

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v2, :cond_2

    monitor-exit v0

    return v1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/16 v0, 0x5dc

    return v0

    :cond_4
    const/16 v0, 0xbb8

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dismissSmallDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setForceKeyguardStatusBarVisibility(Z)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->ENG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "dismiss SmallDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method private doRefresh()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    return-void
.end method

.method private expandDialogAnim()V
    .locals 3

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expandDialogAnim() from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRequestedHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMaxH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRequestedHeight:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxH:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "expandDialogAnim()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private expandcollapseDialogAnim()V
    .locals 10

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "expandcollapseDialogAnim()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandCollapseAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopPadding()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopMargin()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogSmallBackground:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollHandlerView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v6, v7, v8}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    invoke-direct {p0, v3, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setVolumeContentAlpha(ZI)V

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedH(Z)V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v8, :cond_5

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->startViewAlphaAnim(Z)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedWindowHeight()V

    if-nez v7, :cond_4

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$WgpHClPzhNsqsI88aZLxRgyGOyI;

    invoke-direct {v3, p0, v1, v4}, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$WgpHClPzhNsqsI88aZLxRgyGOyI;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollFromH:I

    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMinH:I

    add-int v2, v1, v4

    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    add-int/2addr v2, v3

    add-int/2addr v2, v7

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBottomView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollToH:I

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxH:I

    goto :goto_3

    :cond_5
    iput-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollFromH:I

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBottomView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollToH:I

    :goto_3
    const-string v2, "601"

    const-string v3, "6011"

    invoke-static {v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expandcollapseDialogAnim() mExpanded="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mScrollFromH="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollFromH:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mScrollToH="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollToH:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mAfterHeight="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", MediaControlH="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", DnDHeight="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private findRow(I)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    if-ne v3, v4, :cond_0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveChildIndex:I

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveChildIndex:I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    return-object v1
.end method

.method private getBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070807

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    const v5, 0x7f060320

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iget-object v5, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f060328

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f070808

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-boolean v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHasCutOutDisplay:Z

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x8

    if-eqz v6, :cond_0

    new-array v6, v15, [F

    int-to-float v15, v2

    aput v15, v6, v14

    int-to-float v14, v2

    aput v14, v6, v13

    int-to-float v13, v2

    aput v13, v6, v12

    int-to-float v12, v2

    aput v12, v6, v11

    int-to-float v11, v2

    aput v11, v6, v10

    int-to-float v10, v2

    aput v10, v6, v9

    int-to-float v9, v2

    aput v9, v6, v8

    int-to-float v8, v2

    aput v8, v6, v7

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    :cond_0
    new-array v6, v15, [F

    const/4 v15, 0x0

    aput v15, v6, v14

    aput v15, v6, v13

    aput v15, v6, v12

    aput v15, v6, v11

    int-to-float v11, v2

    aput v11, v6, v10

    int-to-float v10, v2

    aput v10, v6, v9

    int-to-float v9, v2

    aput v9, v6, v8

    int-to-float v8, v2

    aput v8, v6, v7

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :goto_0
    iget-boolean v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNightMode:Z

    if-eqz v6, :cond_1

    invoke-virtual {v1, v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    if-eqz p1, :cond_2

    const/16 v7, 0xe5

    goto :goto_1

    :cond_2
    const/16 v7, 0xff

    :goto_1
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v1
.end method

.method private getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException happens in getBitmapDrawableFromView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    div-int/lit8 v2, v0, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    :goto_0
    return v2
.end method

.method private static getImpliedMediaVolumeLevel(I)I
    .locals 1

    div-int/lit8 p0, p0, 0xa

    mul-int/lit8 v0, p0, 0xa

    return v0
.end method

.method private getMediaViewAlphaByHeight(Landroid/view/View;I)F
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopPadding()I

    move-result v2

    add-int v3, v1, v2

    const/4 v4, 0x0

    if-ge p2, v3, :cond_0

    return v4

    :cond_0
    add-int v3, v1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    if-le p2, v3, :cond_1

    return v5

    :cond_1
    sub-int v3, p2, v2

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v3, v0

    cmpl-float v6, v3, v4

    if-lez v6, :cond_2

    move v4, v3

    nop

    :cond_2
    move v3, v4

    cmpg-float v4, v3, v5

    if-gez v4, :cond_3

    move v5, v3

    nop

    :cond_3
    move v3, v5

    return v3
.end method

.method private getRowViewAlphaByHeight(Landroid/view/View;I)F
    .locals 8

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopPadding()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxH:I

    if-lt p2, v5, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    goto :goto_4

    :cond_2
    add-int v5, v1, v0

    if-lt p2, v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogSmallBackground:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    if-ge p2, v5, :cond_3

    goto :goto_3

    :cond_3
    int-to-float v5, p2

    int-to-float v6, v1

    add-float/2addr v6, v2

    add-float/2addr v6, v3

    int-to-float v7, v4

    add-float/2addr v6, v7

    int-to-float v7, v0

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    sub-int v5, p2, v1

    int-to-float v5, v5

    sub-float/2addr v5, v3

    int-to-float v6, v4

    sub-float/2addr v5, v6

    int-to-float v6, v0

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    :goto_4
    nop

    return v5
.end method

.method private getSmartViewDeviceName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_1
    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_3
    return-object v1

    :cond_4
    return-object v1
.end method

.method private getSmartViewIcon(Z)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isAudioDlnaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x7f0807ab

    goto :goto_0

    :cond_0
    const v0, 0x7f0807a9

    :goto_0
    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f0807b4

    goto :goto_1

    :cond_2
    const v0, 0x7f0807b2

    :goto_1
    return v0
.end method

.method private getStatusBarRootWindowInsets()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 4

    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find translation for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    return-object v1
.end method

.method private getTopMargin()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHasCutOutDisplay:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070812

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getTopPadding()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHasCutOutDisplay:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCutOutHeight:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCutOutHeight:I

    :cond_2
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCutOutHeight:I

    return v0
.end method

.method private hideScrollBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    const v1, -0x39e3c000    # -10000.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollHandlerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->doRefresh()V

    return-void
.end method

.method private hideSmallDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    :cond_0
    return-void
.end method

.method private initBackground()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getBackground(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAlphaBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getBackground(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    sput v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "initCoverManager fail NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private initDialog()V
    .locals 9

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "initDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->dismiss()V

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedH(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mWindowType:I

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setDialogWindowAttributes(Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    new-instance v3, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissSmallDialog()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    :cond_1
    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->setMinimized(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mWindowType:I

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setDialogWindowAttributes(Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;I)V

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHovering:Z

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSystemSettingAllSoundOff()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0d01e7

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->setContentView(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0d0232

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->setContentView(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a063a

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a063b

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a0637

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a0638

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogSmallBackground:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a0647

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBottomView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a0639

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentContainerView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a0641

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialogView;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollView:Lcom/android/systemui/volume/SecVolumeDialogView;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a064d

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollHandlerView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setExpanded(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0d020e

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->setContentView(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a0544

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a0546

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogContentParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a0545

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogContentView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialogMotion;->setContext(Landroid/content/Context;)V

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLimit:I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0xe

    const/4 v4, 0x3

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVoiceCapable:Z

    const/4 v5, 0x5

    const v6, 0x7f0807b6

    const v7, 0x7f0807ba

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, v0, v7, v6, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    invoke-direct {p0, v4, v7, v6, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    invoke-direct {p0, v5, v7, v6, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v5, v7, v6, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    invoke-direct {p0, v4, v7, v6, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    :goto_1
    invoke-direct {p0, v1, v7, v6, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, v7, v6, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const v0, 0x7f0807ae

    invoke-direct {p0, v2, v0, v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/4 v0, 0x6

    const v5, 0x7f0807ac

    invoke-direct {p0, v0, v5, v5, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/16 v0, 0xa

    invoke-direct {p0, v0, v7, v6, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/16 v0, 0x10

    invoke-direct {p0, v0, v7, v6, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/16 v0, 0xd

    const v5, 0x7f0807b2

    const v8, 0x7f0807b4

    invoke-direct {p0, v0, v5, v8, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    invoke-direct {p0, v3, v7, v6, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addExistingRows()V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsSmallDialog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0807b7

    const v5, 0x7f0807bb

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow_small(IIIZ)V

    invoke-direct {p0, v3, v5, v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow_small(IIIZ)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addExistingRowsSmall()V

    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addAdditionalPanels()V

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070825

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSwipeDistance:I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initBackground()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogSmallBackground:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAlphaBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initRow(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xd

    if-ne p2, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3402(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1702(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3502(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d01e8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3102(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0649

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3702(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a064b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v4, p0, p1, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialogImpl$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/volume/SecVolumeDialogImpl$8;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$8;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->semSetMode(I)V

    invoke-static {p1, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4102(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a064a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1802(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1602(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IZ)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    const/4 v1, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xe

    const/16 v5, 0x64

    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v7, "mivo"

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_4
    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxSmartViewVol:I

    goto :goto_5

    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    if-ne v6, v4, :cond_7

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    goto :goto_5

    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    if-ge v6, v5, :cond_8

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    goto :goto_5

    :cond_8
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRemoteControlMaxVolume:I

    :goto_5
    if-eqz v0, :cond_9

    add-int/lit8 v6, v1, 0x1

    mul-int/2addr v6, v5

    goto :goto_6

    :cond_9
    if-eqz v2, :cond_a

    move v6, v1

    goto :goto_6

    :cond_a
    mul-int/lit8 v6, v1, 0x64

    :goto_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 v7, 0x0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/SeekBar;->semSetMin(I)V

    goto :goto_8

    :cond_b
    if-eqz v2, :cond_e

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v5, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v8, "mavo"

    invoke-virtual {v5, v8}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    :cond_d
    :goto_7
    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMinSmartViewVol:I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->semSetMin(I)V

    :cond_e
    :goto_8
    if-eq p2, v3, :cond_f

    if-ne p2, v4, :cond_10

    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setImpliedEarProtectLevel()V

    :cond_10
    return-void
.end method

.method private initRow_small(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V
    .locals 4

    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3402(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1702(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3502(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d020f

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3102(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a064b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialogImpl$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x1080c30

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4102(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a064a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1802(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method private initTrackingValues()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTraking:Z

    return-void
.end method

.method private isAudioDlnaEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAStatus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBixbyServiceOn()Z
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->VOICE_ENABLE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "bixby_voice_isenable"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-boolean v6, Lcom/android/systemui/volume/D;->ENG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBixbyServiceOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", query elapsed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    move v1, v6

    nop

    :cond_2
    return v1

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception inside isBixbyServiceOn() e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->ENG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v4, "isBixbyServiceOn FALSE"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method public static isClearCoverClosed()Z
    .locals 2

    sget v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDexMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    return v0
.end method

.method private isDlnaEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAStatus:Z

    return v0
.end method

.method private isExtraButtonOn()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "extraVolume"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "audioParam;extraVolume"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExtraButtonOn : extraButtonOnDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : rtvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isInLockScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShadeLockedState()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNightMode()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_night_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static isSafeWarningVisible()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    return v0
.end method

.method private isSmartViewEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAStatus:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSystemSettingAllSoundOff()Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "all_sound_off"

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "all_sound_off -  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2
.end method

.method private isUserInCall()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserInCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static synthetic lambda$addAdditionalPanels$3(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public static synthetic lambda$addAdditionalPanels$4(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public static synthetic lambda$expandcollapseDialogAnim$1(Lcom/android/systemui/volume/SecVolumeDialogImpl;II)V
    .locals 3

    add-int v0, p1, p2

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBottomView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollToH:I

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxH:I

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$onShowDialog$2(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isBixbyServiceOn()Z

    return-void
.end method

.method public static synthetic lambda$showSafetyWarningH$0(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/view/Window;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070837

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070836

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0704c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    const/4 v4, -0x2

    invoke-virtual {p1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    sub-int v5, v1, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private makeSound()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "system/media/audio/ui/TW_Volume_control.ogg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundID:I

    return-void
.end method

.method private needSmallDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->gameMode:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isInLockScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onDismissSafeVolumeWarning()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sendCoverWarningMsgIntent(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onShowDialog()Z
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$9qxMpnyMf7ART9rypBM5Ah6HXDA;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$9qxMpnyMf7ART9rypBM5Ah6HXDA;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sHardwareAccelerated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sput-boolean v1, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateWindowWidthH()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    return v1
.end method

.method private onShowSmallDialog()Z
    .locals 4

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume Dialog is not shown. stream ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isInLockScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setForceKeyguardStatusBarVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->show()V

    const/4 v0, 0x1

    return v0
.end method

.method private onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setExpanded(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStateChangedH mShowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mExpanded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", animating="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mActiveStream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", state.activeStream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPendingStateChanged:Z

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    move v3, v1

    :goto_0
    iget-object v4, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v6, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->findRow(I)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v6

    if-nez v6, :cond_5

    iget v6, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRemoteControlMaxVolume:I

    const v6, 0x7f08033f

    const v7, 0x7f080340

    invoke-direct {p0, v4, v6, v7, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    if-ne v3, v4, :cond_7

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOn:Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    iget v5, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v4, v5, :cond_8

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->reorderDialogContentView()V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    goto :goto_2

    :cond_8
    iput-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->needSmallDialog()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsSmallDialog:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    if-ne v6, v7, :cond_9

    move v6, v1

    goto :goto_4

    :cond_9
    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateSmallVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_5

    :cond_c
    return-void
.end method

.method private playSoundH()V
    .locals 8

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->isChangedFromKey()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "Do not play the sound because the volume dialog is not showing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_4
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSoundH with stream : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->makeSound()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundID:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->releaseSound()V

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private prepareGhostView()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->doRefresh()V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f070815

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentContainerView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareGhostView() elapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 3

    if-nez p1, :cond_2

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "recheckH ALL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->trimObsoleteH()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->needSmallDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsSmallDialog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateSmallVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recheckH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->needSmallDialog()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateSmallVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseSound()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method private reorderDialogContentView()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    if-ne v3, v2, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_3
    goto :goto_0

    :cond_4
    sget-boolean v3, Lcom/android/systemui/volume/D;->ENG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reorderDialogContentView() end elapsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private sendCoverWarningMsgIntent(Z)V
    .locals 4

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d022c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "visibility"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "type"

    const-string v3, "volume"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "remote"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    return-void
.end method

.method private setDialogWindowAttributes(Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;I)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const v3, 0x10c0128

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHasCutOutDisplay:Z

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, 0x4000400

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    iput p2, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x31

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-class v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sHardwareAccelerated:Z

    if-nez v1, :cond_1

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v1, v2

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private setDialogWindowGravity()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x53

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x55

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setExpanded(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollView:Lcom/android/systemui/volume/SecVolumeDialogView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollView:Lcom/android/systemui/volume/SecVolumeDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogView;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method private setImpliedEarProtectLevel()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLimit:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevel:I

    return-void
.end method

.method private setSmallDialogPaddings(III)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogPaddingLeft:I

    iput p3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogPaddingRight:I

    iput p2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialogPaddingTop:I

    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3502(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private setVolumeContentAlpha(ZI)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_3

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    nop

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-eq v1, v3, :cond_6

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getRowViewAlphaByHeight(Landroid/view/View;I)F

    move-result v3

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    if-eqz p1, :cond_5

    move v2, v3

    nop

    :cond_5
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    :goto_1
    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getMediaViewAlphaByHeight(Landroid/view/View;I)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    move v3, v0

    goto :goto_2

    :cond_8
    move v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollHandlerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setVolumeContentHeight(I)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollFromH:I

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollToH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollFromH:I

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollToH:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopPadding()I

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopMargin()I

    move-result v4

    add-int/2addr v3, v4

    move v5, p1

    sub-int v6, p1, v2

    add-int/2addr v6, v3

    if-ge v6, v3, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    move v6, v7

    add-int v7, v6, v2

    if-le v7, v1, :cond_2

    sub-int v7, v1, v2

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    move v6, v7

    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRequestedHeight:I

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    int-to-float v8, v6

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogBackground:Landroid/view/ViewGroup;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int v7, v2, v6

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogSmallBackground:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setBottom(I)V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setBottom(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateBackgroundH()V

    const/4 v8, 0x1

    invoke-direct {p0, v8, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setVolumeContentAlpha(ZI)V

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->adjustGhostViewPosition(I)V

    sget-boolean v8, Lcom/android/systemui/volume/D;->ENG:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVolumeContentHeight() y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", bottom="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", bgHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", min="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", max="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mScrollFromH="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollFromH:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mScrollToH="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollToH:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", scrollY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollView:Lcom/android/systemui/volume/SecVolumeDialogView;

    invoke-virtual {v10}, Lcom/android/systemui/volume/SecVolumeDialogView;->getScrollY()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3500(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showFixedVolumeToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120cad

    goto :goto_0

    :cond_0
    const v0, 0x7f120c9b

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showH(I)V
    .locals 9

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isClearCoverClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/16 v2, 0xe

    if-ne v0, v2, :cond_4

    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isInLockScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->showFixedVolumeToast()V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showH isAnimating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showH mShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " notifyVisible(false)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    :cond_5
    return-void

    :cond_6
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showH r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mShowing : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->needSmallDialog()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->dismiss()V

    :cond_8
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->needSmallDialog()Z

    move-result v0

    if-nez v0, :cond_9

    iput-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissSmallDialog()V

    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v4, :cond_c

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    monitor-exit v0

    return-void

    :cond_c
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iput-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandCollapseAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPreviousBixbyStatus:I

    if-eq v5, v6, :cond_d

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    if-ne v5, v3, :cond_d

    const/16 v5, 0x96e

    invoke-virtual {v0, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPreviousBixbyStatus:I

    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v6, "showH change window type to SEM_TYPE_BIXBY_CLIENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_d
    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPreviousBixbyStatus:I

    if-eq v5, v6, :cond_e

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    if-nez v5, :cond_e

    const/16 v5, 0x7e4

    invoke-virtual {v0, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPreviousBixbyStatus:I

    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v6, "showH change window type to TYPE_VOLUME_OVERLAY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v5}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result v5

    if-eqz v5, :cond_f

    move v5, v3

    goto :goto_1

    :cond_f
    move v5, v1

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    if-nez v6, :cond_10

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v3, "The Dialog is not shown because LCD_OFF Status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void

    :cond_10
    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->needSmallDialog()Z

    move-result v7

    if-eqz v7, :cond_11

    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v7, :cond_12

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onShowSmallDialog()Z

    move-result v6

    goto :goto_2

    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onShowDialog()Z

    move-result v6

    :cond_12
    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v7, v6}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    if-eqz v6, :cond_13

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v1

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v7, v1, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    :cond_13
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private showSafetyWarningH(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5402(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    const/high16 v0, 0x10000000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v3, "SafetyWarning dismissed by FLAG_DISMISS_UI_WARNINGS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onDismissSafeVolumeWarning()V

    :cond_3
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-nez v1, :cond_5

    sget v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    if-eq v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    if-nez v1, :cond_5

    invoke-direct {p0, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sendCoverWarningMsgIntent(Z)V

    :cond_5
    monitor-exit v0

    return-void

    :cond_6
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$11;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v6}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    invoke-direct {v2, p0, v5, v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$11;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v5, 0x50

    invoke-virtual {v2, v5}, Landroid/view/Window;->setGravity(I)V

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isClearCoverClosed()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$wMAzD3Z1H_BgcV5BdETcyYr_q7s;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$wMAzD3Z1H_BgcV5BdETcyYr_q7s;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/view/Window;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    if-ne v5, v4, :cond_8

    const/16 v5, 0x96e

    invoke-virtual {v2, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_8
    sget-boolean v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-nez v5, :cond_a

    sget v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    if-eq v5, v3, :cond_a

    sget v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    if-ne v5, v4, :cond_9

    goto :goto_0

    :cond_9
    const/16 v5, 0x7d9

    invoke-virtual {v2, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_a
    :goto_0
    const/16 v5, 0x7e4

    invoke-virtual {v2, v5}, Landroid/view/Window;->setType(I)V

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-nez v5, :cond_b

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    :cond_b
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v5}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    sput-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    sget-boolean v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-nez v5, :cond_c

    sget v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    if-eq v5, v3, :cond_c

    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0d022c

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "visibility"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "type"

    const-string v7, "volume"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "remote"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v7, v1, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v10, v1, v9, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v8, 0x7f0a00cd

    invoke-virtual {v3, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v8, 0x7f0a00ce

    invoke-virtual {v3, v8, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    :cond_c
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    :goto_2
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private showSmartViewTouchToast()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewTouchToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f120cc4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewTouchToast:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewTouchToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showVolumeLimiterDialog()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120ca7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120ca9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120ca6

    new-instance v3, Lcom/android/systemui/volume/SecVolumeDialogImpl$20;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$20;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/systemui/volume/SecVolumeDialogImpl$21;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$21;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    if-ne v3, v1, :cond_3

    const/16 v1, 0x96e

    invoke-virtual {v2, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x7e4

    invoke-virtual {v2, v1}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/volume/SecVolumeDialogImpl$22;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$22;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_4
    return-void
.end method

.method private startViewAlphaAnim(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogSmallBackground:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAlphaBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private stopSoundH()V
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private themeChanged()V
    .locals 4

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "themeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedH(Z)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initDialog()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateTintColor()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private trimObsoleteH()V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "trimObsoleteH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    goto :goto_1

    :cond_2
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimObsoleteH: stream = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", row.ss = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mDynamic.get(row.stream) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateBackgroundH()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogSmallBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogSmallBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateDefaultTintColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    const v2, 0x7f060314

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f060316

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f060315

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private updateExpandedH(Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setExpanded(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateExpandedH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isUserInCall()Z

    move-result v3

    const/4 v5, 0x6

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v5, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    invoke-direct {p0, v4, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v4, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    invoke-direct {p0, v5, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    invoke-direct {p0, v4, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowA11yStream:Z

    const/16 v5, 0xa

    if-eqz v3, :cond_5

    invoke-direct {p0, v5, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    :goto_2
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    const/16 v5, 0x10

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isBixbyServiceOn()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v5, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto :goto_3

    :cond_6
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->hideScrollBackground()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateExpandedH() elpased="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateExpandedWindowHeight()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopPadding()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070813

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getTopMargin()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f070810

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    const/4 v9, -0x2

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    goto :goto_0

    :cond_1
    move v9, v10

    :goto_0
    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMediaControlView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    goto :goto_1

    :cond_2
    move v11, v10

    :goto_1
    iget v12, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    add-int/2addr v12, v11

    add-int/2addr v12, v9

    iget-object v13, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScrollHandlerView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v1

    add-int/2addr v12, v2

    add-int/2addr v12, v3

    add-int/2addr v12, v4

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_2
    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-le v9, v7, :cond_3

    sget-object v9, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Need Scroll. h="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", height="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", paddingBottom="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    const/4 v9, -0x1

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_3

    :cond_3
    iput-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    :goto_3
    sget-object v9, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EXPAND HEIGHT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mNeedScroll="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updatePaddingForSmallDialog()V
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setSmallDialogPaddings(III)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStatusBarRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v8, v2

    if-ne v7, v8, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-direct {p0, v0, v9, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setSmallDialogPaddings(III)V

    goto :goto_1

    :cond_2
    if-ge v7, v8, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-direct {p0, v9, v0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setSmallDialogPaddings(III)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-direct {p0, v0, v0, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setSmallDialogPaddings(III)V

    :goto_1
    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateRowsH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 8

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRowsH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->trimObsoleteH()V

    :cond_1
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowHeight:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowHeight:I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowHeight:I

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    const/4 v4, 0x1

    if-ne v2, p1, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_6

    if-nez v5, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->semGetScreenSharingStatus()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_5

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/16 v7, 0xe

    if-ne v6, v7, :cond_8

    if-nez v5, :cond_8

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    if-eqz v6, :cond_7

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto :goto_2

    :cond_7
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    :cond_8
    :goto_2
    invoke-direct {p0, v2, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    move-result v3

    if-eqz v5, :cond_9

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVisibleRowIndex:I

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    if-eqz v4, :cond_b

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)V

    :cond_b
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v4, :cond_c

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    if-eqz v4, :cond_d

    :cond_c
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    if-eqz v5, :cond_d

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v4, :cond_e

    if-eqz v3, :cond_e

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowHeight:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    :cond_e
    goto/16 :goto_0

    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-nez v1, :cond_11

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowHeight:I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-nez v1, :cond_10

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_10
    iput-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    goto :goto_4

    :cond_11
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    :goto_4
    iput-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    return-void
.end method

.method private updateSmallVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4702(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSmallVolumeRowH s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ss.level : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", row.lastAudibleLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", row.ss.muted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-lez v1, :cond_3

    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4802(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    :cond_3
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5400(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v1, v2, :cond_4

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5402(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    :cond_4
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v1, :cond_5

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v1

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v1

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateSmallVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)V

    return-void
.end method

.method private updateSmallVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)V
    .locals 10

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/16 v4, 0xe

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmallDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v4

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(ILjava/lang/Object;)V

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v6, "inGracePeriod"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v6, v3, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)J

    move-result-wide v6

    add-long/2addr v6, v8

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v0, :cond_8

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getImpliedMediaVolumeLevel(I)I

    move-result v3

    goto :goto_4

    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v3

    :goto_4
    if-ne p2, v3, :cond_9

    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    return-void

    :cond_9
    if-eqz v0, :cond_a

    move v6, p2

    goto :goto_5

    :cond_a
    mul-int/lit8 v6, p2, 0x64

    :goto_5
    if-eq v2, v6, :cond_b

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_b
    return-void
.end method

.method private updateTintColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    const v2, 0x1060264

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x1060266

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconMutedColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x1060265

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTalkbackEnabled:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSwipe:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4702(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVolumeRowH s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ss.level : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", row.lastAudibleLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", row.ss.muted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-lez v3, :cond_3

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {v1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4802(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    :cond_3
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5400(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5402(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-ne v3, v4, :cond_5

    move v3, v6

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_6

    move v7, v6

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v9

    if-ne v9, v6, :cond_7

    move v9, v6

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_8

    move v10, v6

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v12

    const/16 v13, 0xe

    if-eq v12, v11, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v12

    if-ne v12, v13, :cond_9

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    move v12, v6

    :goto_5
    if-eqz v3, :cond_b

    iget-object v14, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v14, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v14, v6, :cond_b

    move v14, v6

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_6
    if-eqz v7, :cond_c

    iget-object v15, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v15, v15, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v15, v6, :cond_c

    move v15, v6

    goto :goto_7

    :cond_c
    const/4 v15, 0x0

    :goto_7
    if-eqz v9, :cond_d

    iget-object v5, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v5, v6, :cond_d

    move v5, v6

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    if-eqz v3, :cond_e

    iget-object v11, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v11, v11, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v11, :cond_e

    move v11, v6

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    :goto_9
    if-eqz v7, :cond_f

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v13, v13, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v13, :cond_f

    move v13, v6

    goto :goto_a

    :cond_f
    const/4 v13, 0x0

    :goto_a
    if-eqz v9, :cond_10

    iget-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v6, :cond_10

    const/4 v6, 0x1

    goto :goto_b

    :cond_10
    const/4 v6, 0x0

    :goto_b
    if-eqz v3, :cond_11

    iget-object v8, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v8, v8, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v8, v4, :cond_11

    const/4 v8, 0x1

    goto :goto_c

    :cond_11
    const/4 v8, 0x0

    :goto_c
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v17

    const/4 v4, 0x6

    if-eqz v17, :cond_13

    move/from16 v18, v6

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    if-ne v6, v4, :cond_12

    goto :goto_d

    :cond_12
    const/4 v6, 0x0

    goto :goto_e

    :cond_13
    move/from16 v18, v6

    :goto_d
    const/4 v6, 0x1

    :goto_e
    iget-boolean v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVoiceCapable:Z

    if-eqz v4, :cond_15

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    move/from16 v19, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_14

    :goto_f
    const/4 v4, 0x1

    goto :goto_11

    :cond_14
    nop

    :goto_10
    const/4 v4, 0x0

    goto :goto_11

    :cond_15
    move/from16 v19, v5

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_16

    goto :goto_f

    :cond_16
    goto :goto_10

    :goto_11
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    move/from16 v20, v4

    const/16 v4, 0x10

    if-ne v5, v4, :cond_17

    const/4 v4, 0x1

    goto :goto_12

    :cond_17
    const/4 v4, 0x0

    :goto_12
    if-eqz v12, :cond_19

    iget v5, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    move/from16 v21, v12

    const/4 v12, 0x2

    if-eq v5, v12, :cond_18

    iget-boolean v5, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v5, :cond_1a

    :cond_18
    const/4 v5, 0x1

    goto :goto_13

    :cond_19
    move/from16 v21, v12

    :cond_1a
    const/4 v5, 0x0

    :goto_13
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isClearCoverClosed()Z

    move-result v12

    move/from16 v22, v12

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v12

    move/from16 v23, v6

    const/4 v6, 0x6

    if-ne v12, v6, :cond_1b

    iget-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$State;->fixedSCOVolume:Z

    if-eqz v6, :cond_1b

    const/4 v6, 0x1

    goto :goto_14

    :cond_1b
    const/4 v6, 0x0

    :goto_14
    iget v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    move/from16 v24, v6

    const/4 v6, 0x1

    if-ne v12, v6, :cond_1c

    const/4 v6, 0x1

    goto :goto_15

    :cond_1c
    const/4 v6, 0x0

    :goto_15
    if-eqz v6, :cond_22

    if-nez v10, :cond_1d

    if-eqz v4, :cond_1e

    :cond_1d
    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v12, v12, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-nez v12, :cond_21

    :cond_1e
    if-eqz v9, :cond_1f

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v12, v12, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    if-nez v12, :cond_21

    :cond_1f
    if-eqz v7, :cond_20

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v12, v12, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-eqz v12, :cond_20

    iget-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVoiceCapable:Z

    if-eqz v12, :cond_20

    goto :goto_16

    :cond_20
    goto :goto_17

    :cond_21
    :goto_16
    const/4 v12, 0x1

    goto :goto_18

    :cond_22
    :goto_17
    const/4 v12, 0x0

    :goto_18
    move/from16 v25, v4

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v4

    move/from16 v26, v6

    if-eqz v10, :cond_28

    iget-boolean v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v6, :cond_27

    iget-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v6, :cond_27

    iget-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result v6

    move/from16 v27, v7

    iget-object v7, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-eqz v6, :cond_23

    move/from16 v28, v6

    iget-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v29, v9

    const/4 v9, 0x2

    if-ne v6, v9, :cond_24

    iget-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v9, 0x7f120cbb

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    :cond_23
    move/from16 v28, v6

    move/from16 v29, v9

    :cond_24
    if-eqz v7, :cond_25

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTDeviceName:Ljava/lang/String;

    :cond_25
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v7

    const-string v7, "mBTDeviceName = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTDeviceName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTDeviceName:Ljava/lang/String;

    if-eqz v6, :cond_26

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTDeviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_26
    :goto_19
    goto :goto_1a

    :cond_27
    move/from16 v27, v7

    move/from16 v29, v9

    move/from16 v31, v12

    goto/16 :goto_1d

    :cond_28
    move/from16 v27, v7

    move/from16 v29, v9

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object v4

    :cond_29
    :goto_1a
    move/from16 v31, v12

    goto/16 :goto_1d

    :cond_2a
    iget v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    if-eqz v6, :cond_2b

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/16 v7, 0xe

    if-ne v6, v7, :cond_2b

    iget-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    iget v7, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    iget v9, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->getPinAppName(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v31, v12

    const-string v12, " ("

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") ("

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1d

    :cond_2b
    move/from16 v31, v12

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2e

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2e

    iget-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v6, :cond_2e

    iget-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v12, v9}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v12

    if-eqz v12, :cond_2c

    iput-object v9, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_1c

    :cond_2c
    goto :goto_1b

    :cond_2d
    :goto_1c
    iget-object v7, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v7, :cond_2e

    iget-object v7, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTScoDeviceName:Ljava/lang/String;

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mBTScoDeviceName = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTScoDeviceName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTScoDeviceName:Ljava/lang/String;

    if-eqz v7, :cond_2e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTScoDeviceName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2e
    :goto_1d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_2f

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    :cond_2f
    iget-boolean v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    if-nez v6, :cond_31

    iget-boolean v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    if-eqz v6, :cond_30

    goto :goto_1e

    :cond_30
    const/4 v6, 0x0

    goto :goto_1f

    :cond_31
    :goto_1e
    const/4 v6, 0x1

    :goto_1f
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    if-eqz v7, :cond_33

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    const/4 v9, 0x6

    if-ne v7, v9, :cond_32

    goto :goto_20

    :cond_32
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_22

    :cond_33
    :goto_20
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    if-nez v6, :cond_34

    const/4 v9, 0x1

    goto :goto_21

    :cond_34
    const/4 v9, 0x0

    :goto_21
    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_22
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    if-eqz v6, :cond_35

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_23

    :cond_35
    const/high16 v9, 0x3f000000    # 0.5f

    :goto_23
    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-nez v14, :cond_3f

    if-eqz v15, :cond_36

    goto :goto_28

    :cond_36
    iget-boolean v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v7, :cond_37

    const v7, 0x7f0807ac

    goto :goto_29

    :cond_37
    if-nez v11, :cond_3d

    if-nez v13, :cond_3d

    if-nez v5, :cond_3d

    if-nez v8, :cond_39

    iget-boolean v7, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    if-eqz v7, :cond_38

    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eqz v7, :cond_3d

    :cond_38
    iget-boolean v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v7, :cond_39

    goto :goto_26

    :cond_39
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    const/16 v9, 0xd

    if-ne v7, v9, :cond_3c

    iget-boolean v7, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewisMute:Z

    if-nez v7, :cond_3b

    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v7, :cond_3a

    goto :goto_24

    :cond_3a
    const/4 v7, 0x0

    goto :goto_25

    :cond_3b
    :goto_24
    const/4 v7, 0x1

    :goto_25
    invoke-direct {v0, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getSmartViewIcon(Z)I

    move-result v7

    goto :goto_29

    :cond_3c
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    goto :goto_29

    :cond_3d
    :goto_26
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    const/16 v9, 0xd

    if-eq v7, v9, :cond_3e

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    goto :goto_27

    :cond_3e
    const/4 v7, 0x1

    invoke-direct {v0, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getSmartViewIcon(Z)I

    move-result v9

    move v7, v9

    :goto_27
    goto :goto_29

    :cond_3f
    :goto_28
    const v7, 0x7f0807be

    :goto_29
    nop

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v9

    if-eq v7, v9, :cond_40

    invoke-static {v1, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1602(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_40
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v9, :cond_41

    if-nez v11, :cond_42

    if-nez v14, :cond_42

    if-eqz v3, :cond_42

    :cond_41
    if-eqz v5, :cond_43

    :cond_42
    const/4 v9, 0x0

    goto :goto_2a

    :cond_43
    if-eqz v23, :cond_44

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v9

    iget v9, v9, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    const/4 v12, 0x1

    add-int/2addr v9, v12

    goto :goto_2a

    :cond_44
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v9

    iget v9, v9, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    :goto_2a
    if-eqz v10, :cond_46

    iget-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v12, :cond_45

    goto :goto_2b

    :cond_45
    move-object/from16 v32, v4

    goto :goto_2c

    :cond_46
    :goto_2b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v12

    move-object/from16 v32, v4

    const/16 v4, 0xe

    if-ne v12, v4, :cond_48

    iget-boolean v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v4, :cond_48

    :goto_2c
    iget v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevel:I

    if-lt v9, v4, :cond_48

    if-eqz v22, :cond_47

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v12}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2d

    :cond_47
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v12}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2d

    :cond_48
    if-eqz v22, :cond_49

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v12}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2d

    :cond_49
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v12}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_2d
    const v4, 0x7f0807be

    if-ne v7, v4, :cond_4a

    const/4 v4, 0x3

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    goto :goto_30

    :cond_4a
    const v4, 0x7f0807b6

    if-eq v7, v4, :cond_4e

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    if-ne v7, v4, :cond_4b

    goto :goto_2f

    :cond_4b
    const v4, 0x7f0807ac

    if-eq v7, v4, :cond_4d

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    if-ne v7, v4, :cond_4c

    goto :goto_2e

    :cond_4c
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    goto :goto_30

    :cond_4d
    :goto_2e
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    goto :goto_30

    :cond_4e
    :goto_2f
    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    if-nez v23, :cond_50

    if-eqz v22, :cond_4f

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v12}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_30

    :cond_4f
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v12}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_50
    :goto_30
    if-eqz v3, :cond_53

    if-eqz v14, :cond_51

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    move/from16 v33, v3

    const v3, 0x7f120c9d

    invoke-virtual {v12, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_31
    move/from16 v34, v6

    goto/16 :goto_33

    :cond_51
    move/from16 v33, v3

    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v12, 0x7f120c9e

    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_31

    :cond_52
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v12, 0x7f120c9c

    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_31

    :cond_53
    move/from16 v33, v3

    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-nez v3, :cond_55

    iget-boolean v3, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    if-eqz v3, :cond_54

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_54

    move/from16 v34, v6

    goto :goto_32

    :cond_54
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    move/from16 v34, v6

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    aput-object v12, v6, v16

    const v12, 0x7f120c9f

    invoke-virtual {v4, v12, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_33

    :cond_55
    move/from16 v34, v6

    :goto_32
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    aput-object v12, v6, v16

    const v12, 0x7f120ca0

    invoke-virtual {v4, v12, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_33
    if-nez v15, :cond_56

    if-nez v13, :cond_56

    if-nez v19, :cond_56

    if-eqz v18, :cond_57

    :cond_56
    if-eqz v20, :cond_58

    :cond_57
    const/4 v3, 0x1

    goto :goto_34

    :cond_58
    const/4 v3, 0x0

    :goto_34
    iget-boolean v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-nez v4, :cond_5b

    if-nez v5, :cond_5b

    if-nez v24, :cond_5b

    if-eqz v31, :cond_59

    goto :goto_35

    :cond_59
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    const/16 v6, 0xd

    if-ne v4, v6, :cond_5c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isDlnaEnabled()Z

    move-result v4

    if-eqz v4, :cond_5a

    const/4 v3, 0x1

    goto :goto_36

    :cond_5a
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isDlnaEnabled()Z

    move-result v4

    if-nez v4, :cond_5c

    iget-object v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v4

    if-nez v4, :cond_5c

    const/4 v3, 0x0

    goto :goto_36

    :cond_5b
    :goto_35
    const/4 v3, 0x0

    :cond_5c
    :goto_36
    if-nez v3, :cond_5e

    iget-boolean v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v4, :cond_5d

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5f

    :cond_5d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    const v6, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_37

    :cond_5e
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_5f
    :goto_37
    invoke-direct {v0, v1, v3, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;ZI)V

    return-void
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;ZI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-direct {v0, v1, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/16 v8, 0xe

    const/4 v9, 0x3

    if-eqz v2, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v10

    if-eq v10, v9, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v10

    if-ne v10, v8, :cond_2

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v10

    if-nez v10, :cond_4

    if-eqz v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isExtraButtonOn()Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v11, "Call setMode(ProgressBar.MODE_WARNING)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/widget/SeekBar;->semSetMode(I)V

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/widget/SeekBar;->semSetMode(I)V

    :cond_4
    :goto_1
    iget-boolean v10, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTalkbackEnabled:Z

    if-eqz v10, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Z

    move-result v10

    if-eqz v10, :cond_6

    return-void

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getProgress()I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v9, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v11

    if-ne v11, v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v11

    if-ne v11, v12, :cond_8

    move v11, v10

    goto :goto_4

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v11

    goto :goto_4

    :cond_9
    :goto_3
    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getImpliedMediaVolumeLevel(I)I

    move-result v11

    :goto_4
    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    cmp-long v13, v13, v15

    if-gez v13, :cond_a

    move v13, v6

    goto :goto_5

    :cond_a
    move v13, v5

    :goto_5
    iget-object v14, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v14, v9, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(ILjava/lang/Object;)V

    iget-boolean v14, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-eqz v14, :cond_c

    if-eqz v7, :cond_c

    if-eqz v13, :cond_c

    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_b

    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v6, "inGracePeriod"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v5, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    iget-object v6, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v6, v9, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)J

    move-result-wide v8

    add-long/2addr v8, v15

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_c
    if-ne v3, v11, :cond_d

    iget-boolean v14, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-eqz v14, :cond_d

    if-eqz v7, :cond_d

    return-void

    :cond_d
    mul-int/lit8 v14, v3, 0x64

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v15

    if-eq v15, v9, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v9

    if-eq v9, v8, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v8

    if-ne v8, v12, :cond_f

    :cond_e
    move v14, v3

    :cond_f
    if-eq v10, v14, :cond_14

    iget-boolean v8, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-eqz v8, :cond_12

    if-eqz v7, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5500(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v8

    if-ne v8, v14, :cond_10

    return-void

    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v9, 0x2

    if-nez v8, :cond_11

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v8

    const-string v12, "progress"

    new-array v9, v9, [I

    aput v10, v9, v5

    aput v14, v9, v6

    invoke-static {v8, v12, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4102(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v9, v9, [I

    aput v10, v9, v5

    aput v14, v9, v6

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    :goto_6
    invoke-static {v1, v14}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5502(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x50

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_7

    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_14
    :goto_7
    return-void
.end method

.method private updateWindowState()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandCollapseAnimating:Z

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    move-result v4

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_2
    return-void
.end method

.method private updateWindowWidthH()V
    .locals 6

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "updateWindowWidthH()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumeDialogImpl;->IS_TABLET_DEVICE:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070828

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0707a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    if-le v2, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    move v2, v4

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f07081e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private zenModeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dnd mode Changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->checkDndViewShow()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->removeListeners()V

    return-void
.end method

.method protected dismissH(I)V
    .locals 6

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissH reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sHardwareAccelerated:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sPrevSystemRendererDisabled:Z

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-eq p1, v2, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v5, "SafetyWarning dismissed"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sput-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    goto :goto_1

    :cond_3
    :goto_0
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v5, "SafetyWarning dismiss cancelled"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0xc

    const/16 v1, 0xb

    if-eq p1, v1, :cond_5

    if-eq p1, v3, :cond_5

    const/4 v5, 0x4

    if-eq p1, v5, :cond_5

    if-ne p1, v0, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    :cond_6
    const/16 v5, 0x9

    if-ne p1, v5, :cond_7

    return-void

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v5}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissH isAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v5, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(I)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-nez v3, :cond_9

    return-void

    :cond_9
    iput-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissSmallDialog()V

    if-eq p1, v2, :cond_b

    if-eq p1, v1, :cond_b

    if-ne p1, v0, :cond_a

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$10;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->dismiss()V

    invoke-direct {p0, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedH(Z)V

    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initTrackingValues()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x20

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const-class v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f120c96

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 3

    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mWindowType:I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initDialog()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->init()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDensity:I

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mOrientation:I

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mUiMode:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCutOutHeight:I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isNightMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNightMode:Z

    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method

.method public setAutomute(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSilentMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSilentMode:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method
