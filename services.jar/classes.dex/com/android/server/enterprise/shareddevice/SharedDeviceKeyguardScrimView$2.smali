.class Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$2;
.super Ljava/lang/Object;
.source "SharedDeviceKeyguardScrimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->showScrim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$2;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$2;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->removeAllViews()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$2;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$2;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$2;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$2;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->isScrimVisible:Z

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$2;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    iget-object v0, v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mHandler:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
