.class public interface abstract Lcom/android/systemui/servicebox/KeyguardServiceBoxController;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# virtual methods
.method public abstract disableBlurFlag(Ljava/lang/String;)V
.end method

.method public abstract dismissServiceBox(Ljava/lang/String;)V
.end method

.method public abstract getAODRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;
.end method

.method public abstract getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;
.end method

.method public abstract getCurrentClockType()I
.end method

.method public abstract getCurrentPagePkgName()Ljava/lang/String;
.end method

.method public abstract getMinHeight()I
.end method

.method public abstract getNotificationCount()I
.end method

.method public abstract getNotificationManager()Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;
.end method

.method public abstract getOwnerInfoMgr(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;
.end method

.method public abstract getPaddingRect(Landroid/graphics/Rect;)Z
.end method

.method public abstract getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;
.end method

.method public abstract isClockOnly()Z
.end method

.method public abstract isContainerExpanded()Z
.end method

.method public abstract isEnabledBioUnlock()Z
.end method

.method public abstract isShowServiceBox()Z
.end method

.method public abstract onDismissServiceBoxStarted(Ljava/lang/String;)V
.end method

.method public abstract onPageSelected(Ljava/lang/String;)V
.end method

.method public abstract onSettingsChanged(Landroid/net/Uri;)V
.end method

.method public abstract onSetupCompleted()V
.end method

.method public abstract playOwnerInfoAnimation(F)V
.end method

.method public abstract reissueAllPages()V
.end method

.method public abstract removeRemoteViews(Ljava/lang/String;)V
.end method

.method public abstract sendRequestRemoteViewsBroadcast()V
.end method

.method public abstract sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V
.end method

.method public abstract setContainer(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
.end method

.method public abstract setCurrentClockType(I)V
.end method

.method public abstract setCurrentPage(Ljava/lang/String;)V
.end method

.method public abstract showServiceBox(Ljava/lang/String;)V
.end method

.method public abstract updateClockPageLocation(F)V
.end method
