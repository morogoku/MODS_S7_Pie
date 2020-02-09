.class public interface abstract Lcom/android/systemui/servicebox/KeyguardStatusCallback;
.super Ljava/lang/Object;
.source "KeyguardStatusCallback.java"


# virtual methods
.method public abstract isKeyguardShowing()Z
.end method

.method public abstract setFullScreenMode(Ljava/util/function/Supplier;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract startActivity(Landroid/app/PendingIntent;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;Z)V
.end method

.method public abstract updateClockPosition(F)V
.end method

.method public abstract userActivity()V
.end method
