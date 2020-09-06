.class Lcom/android/server/DeviceRootKeyService$BigData$1;
.super Ljava/lang/Thread;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceRootKeyService$BigData;->sendIntent()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DeviceRootKeyService$BigData;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceRootKeyService$BigData;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$BigData$1;->this$1:Lcom/android/server/DeviceRootKeyService$BigData;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    # getter for: Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->access$800()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData$1;->this$1:Lcom/android/server/DeviceRootKeyService$BigData;

    iget-object v1, v1, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v2, "DEVROOT#Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityManager getLockTaskModeState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_2d
    iget-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData$1;->this$1:Lcom/android/server/DeviceRootKeyService$BigData;

    iget-object v1, v1, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v2, "DEVROOT#Service"

    const-string v3, "ActivityManager is null"

    # invokes: Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData$1;->this$1:Lcom/android/server/DeviceRootKeyService$BigData;

    # getter for: Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/DeviceRootKeyService$BigData;->access$900(Lcom/android/server/DeviceRootKeyService$BigData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData$1;->this$1:Lcom/android/server/DeviceRootKeyService$BigData;

    # getter for: Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/DeviceRootKeyService$BigData;->access$1000(Lcom/android/server/DeviceRootKeyService$BigData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$BigData$1;->this$1:Lcom/android/server/DeviceRootKeyService$BigData;

    # getter for: Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DeviceRootKeyService$BigData;->access$1100(Lcom/android/server/DeviceRootKeyService$BigData;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_68

    const-string/jumbo v2, "extra"

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData$1;->this$1:Lcom/android/server/DeviceRootKeyService$BigData;

    # getter for: Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/DeviceRootKeyService$BigData;->access$1100(Lcom/android/server/DeviceRootKeyService$BigData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    # getter for: Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->access$800()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData$1;->this$1:Lcom/android/server/DeviceRootKeyService$BigData;

    iget-object v3, v3, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v4, "DEVROOT#Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Success to sendIntent, mAppId = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/DeviceRootKeyService$BigData$1;->this$1:Lcom/android/server/DeviceRootKeyService$BigData;

    # getter for: Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/DeviceRootKeyService$BigData;->access$900(Lcom/android/server/DeviceRootKeyService$BigData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], mFeature = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/DeviceRootKeyService$BigData$1;->this$1:Lcom/android/server/DeviceRootKeyService$BigData;

    # getter for: Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/DeviceRootKeyService$BigData;->access$1000(Lcom/android/server/DeviceRootKeyService$BigData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
