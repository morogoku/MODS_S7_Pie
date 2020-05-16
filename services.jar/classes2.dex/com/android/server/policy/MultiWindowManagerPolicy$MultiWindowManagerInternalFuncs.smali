.class public interface abstract Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;
.super Ljava/lang/Object;
.source "MultiWindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MultiWindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiWindowManagerInternalFuncs"
.end annotation


# virtual methods
.method public abstract forceHideFloatingMultiWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract getImeTargetFreeformTaskId(I)I
.end method

.method public abstract getLaunchBoundsForMetaKeyEvent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Landroid/graphics/Rect;
.end method

.method public abstract isExpandedDockedStackLocked()Z
.end method

.method public abstract isForceHideFloatingMultiWindow()Z
.end method

.method public abstract isMinimizedDock()Z
.end method

.method public abstract isSnapWindowRunning()Z
.end method

.method public abstract resizeFreeformTask(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V
.end method
