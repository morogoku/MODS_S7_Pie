.class public interface abstract Lcom/android/server/policy/IMultiDisplayPolicy;
.super Ljava/lang/Object;
.source "IMultiDisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;
    }
.end annotation


# virtual methods
.method public abstract adjustSystemUiVisibilityLw(II)I
.end method

.method public abstract applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract beginPostLayoutPolicyLw(III)V
.end method

.method public abstract finishPostLayoutPolicyLw(I)I
.end method

.method public abstract focusUpdateRequestedLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;I)V
.end method

.method public abstract getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;I)V
.end method

.method public abstract getStatusBarHeight(I)I
.end method

.method public abstract hasMultiDisplayPolicy(I)Z
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;Lcom/android/server/policy/WindowManagerPolicy;)V
.end method

.method public abstract onConfigurationChanged(I)V
.end method

.method public abstract onDexModeChangedLw(I)V
.end method

.method public abstract onDisplayAdded(Landroid/view/Display;)V
.end method

.method public abstract onDisplayChanged(Landroid/view/Display;)V
.end method

.method public abstract onDisplayRemoved(I)V
.end method

.method public abstract setWinnerPocSubDisplayMode(I)V
.end method
