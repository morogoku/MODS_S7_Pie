.class Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;
.super Landroid/content/BroadcastReceiver;
.source "LockscreenOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;->this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSO_LockscreenOverlayView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_2d
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;->this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    # getter for: Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->access$100(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_37
    return-void
.end method
