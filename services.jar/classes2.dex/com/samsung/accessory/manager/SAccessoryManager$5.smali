.class Lcom/samsung/accessory/manager/SAccessoryManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-string v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string/jumbo v0, "misc_event"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "sec_plug_type"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "misc_event"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x40

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2a

    move v3, v5

    goto :goto_2b

    :cond_2a
    move v3, v1

    :goto_2b
    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadcastReceiver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", misc_event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", plug event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "misc_event"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v4, 0x200

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_69

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # invokes: Lcom/samsung/accessory/manager/SAccessoryManager;->wirelessChargerConnected(I)V
    invoke-static {v1, v5}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1300(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    goto :goto_79

    :cond_69
    if-nez v3, :cond_79

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z
    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1400(Lcom/samsung/accessory/manager/SAccessoryManager;)Z

    move-result v1

    if-ne v1, v5, :cond_79

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const/4 v4, 0x2

    # invokes: Lcom/samsung/accessory/manager/SAccessoryManager;->wirelessChargerConnected(I)V
    invoke-static {v1, v4}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1300(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    :cond_79
    :goto_79
    return-void
.end method
