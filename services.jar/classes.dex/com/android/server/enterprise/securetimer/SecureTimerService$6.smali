.class Lcom/android/server/enterprise/securetimer/SecureTimerService$6;
.super Landroid/content/BroadcastReceiver;
.source "SecureTimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/securetimer/SecureTimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$6;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v1, "in mBroadCastReceiverForTimeOutConfirm..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INDEX"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    if-ne v0, v1, :cond_19

    const-string v1, "[SecureTimerService:] "

    const-string v2, "Warning: Invalid Index Value!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$6;->getResultCode()I

    move-result v2

    if-eq v2, v1, :cond_52

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$6;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->alarm_retry_count:[I
    invoke-static {v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$2000(Lcom/android/server/enterprise/securetimer/SecureTimerService;)[I

    move-result-object v1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const-string v1, "[SecureTimerService:] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Confirmation From Timer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Owner!Keep It For Next Trigger Retry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$6;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->alarm_retry_count:[I
    invoke-static {v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$2000(Lcom/android/server/enterprise/securetimer/SecureTimerService;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_52
    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$6;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->alarm_retry_count:[I
    invoke-static {v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$2000(Lcom/android/server/enterprise/securetimer/SecureTimerService;)[I

    move-result-object v1

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v1, "[SecureTimerService:] "

    const-string v2, "Confirmation Received!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$6;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$2100(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;

    if-eqz v1, :cond_d3

    const-string v2, "[SecureTimerService:] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to Remove Trigger Timer =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$6;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$2100(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$6;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$2200(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$6;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/securetimer/SecureTimerService;->deleteAlarmRecords(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$1000(Lcom/android/server/enterprise/securetimer/SecureTimerService;Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_cancelTimer(B)I

    move-result v2

    if-eqz v2, :cond_d2

    const-string v3, "[SecureTimerService:] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In triggerAlarm cancelTimer failed: return code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d2
    goto :goto_da

    :cond_d3
    const-string v2, "[SecureTimerService:] "

    const-string v3, "Do Nothing Since Timer Has Already Removed!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_da
    return-void
.end method
