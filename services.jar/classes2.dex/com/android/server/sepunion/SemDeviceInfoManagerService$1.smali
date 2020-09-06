.class Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;
.super Landroid/telephony/PhoneStateListener;
.source "SemDeviceInfoManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 7

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;
    invoke-static {v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    const-string/jumbo v2, "monitor_call_state"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    const-string/jumbo v2, "monitor_call_state"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v1, :cond_3d

    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportCallStateChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;ILjava/lang/String;)V
    invoke-static {v2, v1, p1, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$300(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;ILjava/lang/String;)V

    goto :goto_46

    :cond_3d
    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    return-void
.end method
