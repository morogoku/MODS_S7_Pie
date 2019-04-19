.class Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$2;
.super Ljava/lang/Object;
.source "KeyguardTouchLockScreenManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "KeyguardTouchLockScreenManager"

    const-string v1, "Exit unlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "820"

    const-string v1, "8202"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$2;->this$0:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->unlock()V

    return-void
.end method
