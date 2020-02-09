.class Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$2;
.super Ljava/lang/Object;
.source "KeyguardLockSecureIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x96

    const-wide/16 v5, 0x190

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method
