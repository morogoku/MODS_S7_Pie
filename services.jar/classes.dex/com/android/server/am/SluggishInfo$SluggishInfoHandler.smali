.class final Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;
.super Landroid/os/Handler;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SluggishInfoHandler"
.end annotation


# instance fields
.field private slgInfo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/SluggishInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/am/SluggishInfo;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    # getter for: Lcom/android/server/am/SluggishInfo;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_14

    # getter for: Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SluggishInfoHandler()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    # getter for: Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$200()Lcom/android/server/am/SluggishInfo;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_66

    :cond_18
    if-eqz p1, :cond_65

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_65

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_25

    goto :goto_65

    :cond_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # getter for: Lcom/android/server/am/SluggishInfo;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$000()Z

    move-result v1

    if-eqz v1, :cond_52

    # getter for: Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage() - what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " componentName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_68

    goto :goto_64

    :pswitch_58
    # invokes: Lcom/android/server/am/SluggishInfo;->addInnerChangeActivityLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->access$500(Ljava/lang/String;)V

    goto :goto_64

    :pswitch_5c
    # invokes: Lcom/android/server/am/SluggishInfo;->addInnerEndLaunchingLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->access$400(Ljava/lang/String;)V

    goto :goto_64

    :pswitch_60
    # invokes: Lcom/android/server/am/SluggishInfo;->addInnerStartLaunchingLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->access$300(Ljava/lang/String;)V

    nop

    :goto_64
    return-void

    :cond_65
    :goto_65
    return-void

    :cond_66
    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5c
        :pswitch_58
    .end packed-switch
.end method
