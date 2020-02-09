.class Lcom/android/server/usb/UsbMirrorLinkManager$1;
.super Landroid/os/UEventObserver;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMirrorLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMirrorLinkManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 8

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NCM_DEVICE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9b

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "usb: f/w ncm start uevent receive "

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;
    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "MirrorLink"

    const/16 v5, 0xc

    invoke-static {v3, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    # setter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;
    invoke-static {v1, v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$102(Lcom/android/server/usb/UsbMirrorLinkManager;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;

    :cond_50
    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;
    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;
    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v1

    if-eqz v1, :cond_7a

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    aget v2, v1, v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;
    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_7a
    goto :goto_84

    :cond_7b
    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, " MirrorLink cpu boost : SemDvfsManager mode is not supported "

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_84
    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->sync:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$300(Lcom/android/server/usb/UsbMirrorLinkManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8b
    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/server/usb/UsbMirrorLinkManager;->startMirrorLink(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$400(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;)V

    monitor-exit v1

    goto :goto_df

    :catchall_98
    move-exception v2

    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_8b .. :try_end_9a} :catchall_98

    throw v2

    :cond_9b
    const-string v1, "RELEASE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->sync:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$300(Lcom/android/server/usb/UsbMirrorLinkManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_aa
    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usb: f/w ncm release uevent receive"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/android/server/usb/UsbMirrorLinkManager;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    invoke-static {v3, v4, v5, v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$500(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    sget-object v3, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->RELEASE:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    iput-object v3, v2, Lcom/android/server/usb/UsbMirrorLinkManager;->latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # invokes: Lcom/android/server/usb/UsbMirrorLinkManager;->clearToastStates()V
    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$600(Lcom/android/server/usb/UsbMirrorLinkManager;)V

    monitor-exit v1

    goto :goto_df

    :catchall_dc
    move-exception v2

    monitor-exit v1
    :try_end_de
    .catchall {:try_start_aa .. :try_end_de} :catchall_dc

    throw v2

    :cond_df
    :goto_df
    return-void
.end method
