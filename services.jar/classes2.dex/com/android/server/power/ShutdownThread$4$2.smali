.class Lcom/android/server/power/ShutdownThread$4$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$4;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final longPressHandler:Landroid/os/Handler;

.field mLongPressed:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/power/ShutdownThread$4;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$4;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4$2;->this$0:Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/power/ShutdownThread$4$2$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$4$2$1;-><init>(Lcom/android/server/power/ShutdownThread$4$2;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    # getter for: Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1400()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    # getter for: Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3400()Z

    move-result v0

    if-nez v0, :cond_67

    # getter for: Lcom/android/server/power/ShutdownThread;->mReboot:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_1b

    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2900()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_67

    :cond_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2e

    # setter for: Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$2402(Z)Z

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_66

    :cond_2e
    const/4 v2, 0x2

    if-ne v0, v2, :cond_45

    invoke-static {p1, p2}, Lcom/android/server/power/ShutdownThread;->isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_66

    # getter for: Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2400()Z

    move-result v2

    if-nez v2, :cond_66

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_66

    :cond_45
    const/4 v2, 0x3

    if-ne v0, v2, :cond_56

    # getter for: Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2400()Z

    move-result v2

    if-nez v2, :cond_66

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_66

    :cond_56
    const/4 v2, 0x1

    if-ne v0, v2, :cond_66

    # getter for: Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2400()Z

    move-result v2

    if-nez v2, :cond_66

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_66
    :goto_66
    return v1

    :cond_67
    :goto_67
    return v1
.end method
