.class Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/LightsService$SvcLEDReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/lights/LightsService$SvcLEDReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService$SvcLEDReceiver;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;->this$1:Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    iput-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    iget-object v0, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v3, "color"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v4, "mode"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v5, "onMs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iget-object v4, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v5, "offMs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v4, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v5, "priority"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/16 v4, 0xd

    if-ne v0, v4, :cond_4c

    iget-object v4, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;->this$1:Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    iget-object v4, v4, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    if-lez v10, :cond_42

    const/4 v2, 0x1

    nop

    :cond_42
    # setter for: Lcom/android/server/lights/LightsService;->mCriticalMode:Z
    invoke-static {v4, v2}, Lcom/android/server/lights/LightsService;->access$1802(Lcom/android/server/lights/LightsService;Z)Z

    const-string v2, "LightsService"

    const-string v4, "[api] [MHS] onReceive : LIGHT_ID_LED_ALL requested"

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    iget-object v2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;->this$1:Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    iget-object v2, v2, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v4, v2, v0

    move v5, v1

    move v6, v3

    move v7, v10

    move v8, v11

    move v9, v12

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/lights/LightsService$LightImpl;->setLedsControl(IIIII)V

    return-void
.end method
