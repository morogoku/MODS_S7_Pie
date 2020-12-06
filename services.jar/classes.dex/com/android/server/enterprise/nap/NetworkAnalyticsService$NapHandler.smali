.class Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;
.super Landroid/os/Handler;
.source "NetworkAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NapHandler"
.end annotation


# static fields
.field private static final ACTION_ACTIVATE_MONITOR_CLIENT:I = 0x1

.field private static final ACTION_BOOT_COMPLETED:I = 0x3

.field private static final ACTION_INITIALIZE_NAP:I = 0x4

.field private static final ACTION_NEW_PROFILE_REGISTERED:I = 0xa

.field private static final ACTION_ON_ADMIN_REMOVED:I = 0x9

.field private static final ACTION_ON_PRE_ADMIN_REMOVED:I = 0x8

.field private static final ACTION_PACKAGE_ADDED:I = 0x7

.field private static final ACTION_PACKAGE_REMOVED:I = 0x6

.field private static final ACTION_PROFILE_STATUS:I = 0xe

.field private static final ACTION_ULTRA_POWER_SAVING_MODE:I = 0xc

.field private static final ACTION_UNREGISTER_CLIENT:I = 0x5

.field private static final ACTION_USER_REMOVED:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_eb

    const/16 v4, 0xe

    if-eq v3, v4, :cond_dd

    packed-switch v3, :pswitch_data_10c

    goto/16 :goto_109

    :pswitch_11
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_19

    return-void

    :cond_19
    const-string/jumbo v3, "reason"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_37

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_30

    const-string v4, "NetworkAnalytics:Service"

    const-string/jumbo v5, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivateOnReboot()V
    invoke-static {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$1000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_109

    :cond_37
    const/4 v4, 0x3

    if-ne v3, v4, :cond_109

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_46

    const-string v4, "NetworkAnalytics:Service"

    const-string/jumbo v5, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE ON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_deactivateAllProfiles()V
    invoke-static {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$1100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_109

    :pswitch_4d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_userRemovedAction(Landroid/os/Bundle;)V
    invoke-static {v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$700(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto/16 :goto_109

    :pswitch_59
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_handleNewProfileRegistration(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V

    goto/16 :goto_109

    :pswitch_64
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gtz v2, :cond_76

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_109

    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v4, "handleMessage: ACTION_ON_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_109

    :cond_76
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unregisterAllProfiles(I)V
    invoke-static {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$900(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    goto/16 :goto_109

    :pswitch_7d
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gtz v2, :cond_8f

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_109

    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v4, "handleMessage: ACTION_ON_PRE_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_109

    :cond_8f
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_deactivateAllProfiles(I)V
    invoke-static {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$800(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    goto/16 :goto_109

    :pswitch_96
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v4, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_packageAddedAction(Ljava/lang/String;I)V
    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$600(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V

    goto :goto_109

    :pswitch_a5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v4, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_packageRemovedAction(Ljava/lang/String;I)V
    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$500(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V

    goto :goto_109

    :pswitch_b4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    if-nez v0, :cond_109

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_c7

    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v4, "handleMessage:UNREGISTER_CLIENT:handleObj null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    return-void

    :pswitch_c8
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->initializeTables()V

    goto :goto_109

    :pswitch_d2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivateOnReboot(Landroid/os/Bundle;)V
    invoke-static {v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$400(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto :goto_109

    :cond_dd
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_e5

    return-void

    :cond_e5
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendStatusToClient(Landroid/os/Bundle;)V
    invoke-static {v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$1200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto :goto_109

    :cond_eb
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_103

    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_102

    const-string v5, "NetworkAnalytics:Service"

    const-string/jumbo v6, "handleMessage:ACTIVATE_MONITOR_CLIENT:handleObj null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_102
    return-void

    :cond_103
    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V
    invoke-static {v5, v0, v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$300(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    nop

    :cond_109
    :goto_109
    return-void

    nop

    nop

    :pswitch_data_10c
    .packed-switch 0x3
        :pswitch_d2
        :pswitch_c8
        :pswitch_b4
        :pswitch_a5
        :pswitch_96
        :pswitch_7d
        :pswitch_64
        :pswitch_59
        :pswitch_4d
        :pswitch_11
    .end packed-switch
.end method
