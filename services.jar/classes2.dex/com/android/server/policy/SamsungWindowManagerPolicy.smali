.class public interface abstract Lcom/android/server/policy/SamsungWindowManagerPolicy;
.super Ljava/lang/Object;
.source "SamsungWindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowState;,
        Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;
    }
.end annotation


# static fields
.field public static final IS_TABLET_DEVICE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/SamsungWindowManagerPolicy;->IS_TABLET_DEVICE:Z

    return-void
.end method

.method public static getSubWindowLayerFromTypeLw(I)I
    .registers 2

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static getWindowLayerFromTypeLw(IZ)I
    .registers 3

    sparse-switch p0, :sswitch_data_40

    const/4 v0, -0x1

    return v0

    :sswitch_5
    const/16 v0, 0x17

    return v0

    :sswitch_8
    const/16 v0, 0x20

    return v0

    :sswitch_b
    const/16 v0, 0x15

    return v0

    :sswitch_e
    const/16 v0, 0x1a

    return v0

    :sswitch_11
    const/16 v0, 0x1d

    return v0

    :sswitch_14
    const/16 v0, 0x23

    return v0

    :sswitch_17
    const/4 v0, 0x3

    return v0

    :sswitch_19
    const/16 v0, 0x9

    return v0

    :sswitch_1c
    const/4 v0, 0x5

    return v0

    :sswitch_1e
    const/4 v0, 0x7

    return v0

    :sswitch_20
    const/16 v0, 0xf

    return v0

    :sswitch_23
    const/16 v0, 0x16

    return v0

    :sswitch_26
    const/16 v0, 0x18

    return v0

    :sswitch_29
    const/4 v0, 0x4

    return v0

    :sswitch_2b
    const/16 v0, 0x10

    return v0

    :sswitch_2e
    const/16 v0, 0x19

    return v0

    :sswitch_31
    const/16 v0, 0x1e

    return v0

    :sswitch_34
    const/16 v0, 0x13

    return v0

    :sswitch_37
    const/16 v0, 0x1b

    return v0

    :sswitch_3a
    const/16 v0, 0x22

    return v0

    :sswitch_3d
    const/16 v0, 0x14

    return v0

    :sswitch_data_40
    .sparse-switch
        0x833 -> :sswitch_3d
        0x834 -> :sswitch_3a
        0x835 -> :sswitch_3a
        0x836 -> :sswitch_37
        0x8b2 -> :sswitch_34
        0x8b3 -> :sswitch_31
        0x8b4 -> :sswitch_2e
        0x8de -> :sswitch_2b
        0x8df -> :sswitch_2b
        0x8e1 -> :sswitch_29
        0x8e2 -> :sswitch_26
        0x8e8 -> :sswitch_26
        0x8e9 -> :sswitch_23
        0x960 -> :sswitch_20
        0x961 -> :sswitch_26
        0x962 -> :sswitch_1e
        0x963 -> :sswitch_1c
        0x964 -> :sswitch_19
        0x965 -> :sswitch_26
        0x966 -> :sswitch_17
        0x967 -> :sswitch_14
        0x968 -> :sswitch_11
        0x969 -> :sswitch_2b
        0x96a -> :sswitch_e
        0x96b -> :sswitch_3d
        0x96c -> :sswitch_1e
        0x96e -> :sswitch_b
        0x96f -> :sswitch_34
        0x974 -> :sswitch_8
        0x97e -> :sswitch_17
        0x97f -> :sswitch_29
        0x988 -> :sswitch_23
        0x989 -> :sswitch_23
        0x98a -> :sswitch_5
        0xa28 -> :sswitch_11
        0xa29 -> :sswitch_2e
    .end sparse-switch
.end method


# virtual methods
.method public abstract IsSBikeModeEnabled()Z
.end method

.method public abstract clearConventionalModeBarSize()V
.end method

.method public abstract computeConventionalModeBarSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract getNavBarHidePolicy(Ljava/lang/String;I)I
.end method

.method public abstract getOverlappedFreeformWithLetterbox()Z
.end method

.method public abstract getRotationLockOrientation()I
.end method

.method public abstract ignorePowerKeyInEncrypting()Z
.end method

.method public abstract init()V
.end method

.method public abstract isAodVisibleWithDozeMode()Z
.end method

.method public abstract isCoverOpen()Z
.end method

.method public abstract isForceHideByViewCover()Z
.end method

.method public abstract isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
.end method

.method public abstract isNavBarHideSettingEnabled()Z
.end method

.method public abstract isNavigationBarVisibleLw()Z
.end method

.method public abstract isReducedAnimationEnabled()Z
.end method

.method public abstract isScreenCaptureEnabled(Z)Z
.end method

.method public abstract isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
.end method

.method public abstract keyguardGoingAwayWithWakeAndUnlock()V
.end method

.method public abstract notifyBeforeQuickAccess(IFF)Z
.end method

.method public abstract notifyMobileKeyboardCoverChanged(ZZ)V
.end method

.method public abstract notifyPenSwitchChanged(JZ)V
.end method

.method public abstract requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
.end method

.method public abstract requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
.end method

.method public abstract requestTransientBars(ZZ)V
.end method

.method public abstract restartOneHandOpService()V
.end method

.method public abstract setCoverSwitchState(Lcom/samsung/android/cover/CoverState;)Z
.end method

.method public abstract setDeadzoneHole(Landroid/os/Bundle;)V
.end method

.method public abstract setLetterBox(IIII)V
.end method

.method public abstract setNavBarHidePolicy(Ljava/lang/String;IZ)V
.end method

.method public abstract setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
.end method

.method public abstract setSafeModeReason(IIIIILjava/lang/String;)V
.end method

.method public abstract updateTopActivity(Landroid/content/ComponentName;)V
.end method

.method public abstract updateTspInputMethodPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V
.end method

.method public abstract updateTspWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method
