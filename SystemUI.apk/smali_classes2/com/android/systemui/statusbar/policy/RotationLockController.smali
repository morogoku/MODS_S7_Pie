.class public interface abstract Lcom/android/systemui/statusbar/policy/RotationLockController;
.super Ljava/lang/Object;
.source "RotationLockController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/Listenable;"
    }
.end annotation


# virtual methods
.method public abstract getRotationLockOrientation()I
.end method

.method public abstract isRotationLocked()Z
.end method

.method public abstract setRotationLocked(Z)V
.end method

.method public abstract setRotationLockedAtAngle(ZI)V
.end method
