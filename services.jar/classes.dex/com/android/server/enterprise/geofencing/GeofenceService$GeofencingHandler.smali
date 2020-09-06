.class final Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
.super Landroid/os/Handler;
.source "GeofenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeofencingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    if-eqz p1, :cond_ef

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_f2

    goto/16 :goto_ef

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V
    invoke-static {v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    goto/16 :goto_ef

    :pswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList(I)V
    invoke-static {v1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$000(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V
    invoke-static {v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    goto/16 :goto_ef

    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;
    invoke-static {v1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$200(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_ef

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ef

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    :goto_44
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_59

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_59
    const-string v4, "com.samsung.android.knox.intent.extra.ID"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "admin_uid"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$300(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "edm.intent.action.device.inside"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "edm.intent.extra.geofence.id"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string/jumbo v5, "edm.intent.extra.geofence.user.id"

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "admin_uid"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$300(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :try_start_b5
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKPUPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v7, "admin_uid"

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_e9} :catch_ea

    goto :goto_ee

    :catch_ea
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ee
    nop

    :cond_ef
    :goto_ef
    return-void

    nop

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_20
        :pswitch_12
        :pswitch_9
    .end packed-switch
.end method
