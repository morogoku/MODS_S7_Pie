.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;
.super Ljava/lang/Object;
.source "PluginLockStarBasicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract goToLockedShade()V
.end method

.method public abstract isSecure()Z
.end method

.method public abstract makeExpandedInvisible()V
.end method

.method public abstract onLaunchTransitionFadingEnded()V
.end method

.method public abstract requestDismissKeyguard(Landroid/content/Intent;)V
.end method

.method public abstract setBiometricRecognition(Z)V
.end method

.method public abstract setDynamicLockData(Ljava/lang/String;)V
.end method

.method public abstract setPluginLockWallpaper(IILjava/lang/String;)V
.end method

.method public abstract setTimeOut(Z)V
.end method

.method public abstract updateDynamicLockData(Ljava/lang/String;)V
.end method

.method public abstract userActivity()V
.end method
