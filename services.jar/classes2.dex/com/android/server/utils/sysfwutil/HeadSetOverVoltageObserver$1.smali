.class Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$1;
.super Landroid/os/UEventObserver;
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

    iput-object p1, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$1;->this$0:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6

    :try_start_0
    const-string v0, "HeadSetOverVoltageObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UEventObserver, event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v1, "115"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$1;->this$0:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;

    # getter for: Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->access$000(Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_30} :catch_31

    :cond_30
    goto :goto_48

    :catch_31
    move-exception v0

    const-string v1, "HeadSetOverVoltageObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    return-void
.end method
