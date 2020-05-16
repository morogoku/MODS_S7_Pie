.class public interface abstract Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;
.super Ljava/lang/Object;
.source "NavBarGesture.java"


# virtual methods
.method public abstract bypassEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract getCurrentOptionalGestureType()Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;
.end method

.method public abstract getDistance(Landroid/view/MotionEvent;)I
.end method

.method public abstract getStartingInjection(Landroid/view/MotionEvent;)Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;
.end method

.method public abstract isForceTouchPressed(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isHold(Landroid/view/MotionEvent;Z)Z
.end method

.method public abstract isLimitedStartingArea(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z
.end method

.method public abstract isStylus(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isTimedOut(Landroid/view/MotionEvent;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z
.end method

.method public abstract isTouchUpOrCancel(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isWrongSlope(Landroid/view/MotionEvent;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z
.end method

.method public abstract onDetecting(Landroid/view/MotionEvent;Z)V
.end method

.method public abstract reset()V
.end method

.method public abstract restoreTouchData()V
.end method

.method public abstract setKeyInjectionInfos(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;",
            ">;)V"
        }
    .end annotation
.end method
