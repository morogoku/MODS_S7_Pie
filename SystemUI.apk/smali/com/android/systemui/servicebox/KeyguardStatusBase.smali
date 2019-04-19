.class public interface abstract Lcom/android/systemui/servicebox/KeyguardStatusBase;
.super Ljava/lang/Object;
.source "KeyguardStatusBase.java"


# virtual methods
.method public abstract animate()Landroid/view/ViewPropertyAnimator;
.end method

.method public abstract dozeTimeTick()V
.end method

.method public abstract getCurrentClockType()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMinTopMargin(Z)I
.end method

.method public abstract getVisibility()I
.end method

.method public abstract isInContentBounds(F)Z
.end method

.method public abstract onDensityOrFontScaleChanged()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setAlpha(F)V
.end method

.method public setDarkAmount(F)V
    .locals 0

    return-void
.end method

.method public abstract setExpandState(ZI)V
.end method

.method public abstract setImportantForAccessibility(I)V
.end method

.method public abstract setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
.end method

.method public abstract setPivotY(F)V
.end method

.method public setPulsing(ZZ)V
    .locals 0

    return-void
.end method

.method public abstract setStatusCallback(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract showServiceBox(Ljava/lang/String;ZI)V
.end method

.method public abstract updateCMAS(Z)V
.end method

.method public abstract updateView()V
.end method
