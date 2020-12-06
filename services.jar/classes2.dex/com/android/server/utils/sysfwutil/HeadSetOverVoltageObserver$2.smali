.class Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$2;
.super Landroid/os/Handler;
.source "HeadSetOverVoltageObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;


# direct methods
.method constructor <init>(Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$2;->this$0:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$2;->this$0:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;

    # getter for: Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->access$000(Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;)Landroid/os/Handler;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$2;->this$0:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;

    # getter for: Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->access$100(Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Connected USB device isn\'t supported"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method
