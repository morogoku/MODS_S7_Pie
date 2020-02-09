.class public interface abstract Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowState;
.super Ljava/lang/Object;
.source "SamsungWindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungWindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SamsungWindowState"
.end annotation


# virtual methods
.method public abstract canApplyForceImmersiveMode()Z
.end method

.method public abstract disableHideSViewCoverOnce(Z)V
.end method

.method public abstract getBaseLayer()I
.end method

.method public abstract getCoverMode()I
.end method

.method public abstract getCustomAspectRatioFrame(Landroid/graphics/Rect;)V
.end method

.method public abstract getDefaultTspDeadzone()Ljava/lang/String;
.end method

.method public abstract getTspDeadzone()Landroid/os/Bundle;
.end method

.method public abstract isChildWindow()Z
.end method

.method public abstract isCustomAspectRatioWindow()Z
.end method

.method public abstract isDeviceDefaultTheme()Z
.end method

.method public abstract isHomeTask()Z
.end method

.method public abstract isPortraitWallpaper()Z
.end method

.method public abstract isShowWhenLockedMainWindowOrAppTokenLw()Z
.end method

.method public abstract isSurfaceShowingLw()Z
.end method

.method public abstract setForceImmersiveModeAllowed(Z)V
.end method

.method public abstract setTspDeadzone(Landroid/os/Bundle;)V
.end method

.method public abstract shouldHideAppWindowByAodPolicyLw()Z
.end method

.method public abstract willBeHideSViewCoverOnce()Z
.end method
