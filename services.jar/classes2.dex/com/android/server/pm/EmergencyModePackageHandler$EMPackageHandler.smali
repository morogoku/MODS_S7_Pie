.class Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;
.super Landroid/os/Handler;
.source "EmergencyModePackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EmergencyModePackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EMPackageHandler"
.end annotation


# static fields
.field public static final EM_PKG_HADNLER_ID:Ljava/lang/String; = "EM_PKG_HADNLER_ID"

.field public static final ID_INVALID:I = -0x1


# instance fields
.field protected final TIMEOUT:J

.field protected emComponents:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected emCurrentPosition:I

.field protected emDontKillFlags:[Z

.field protected emID:I

.field protected emNewState:[I

.field protected emPackages:[Ljava/lang/String;

.field protected emPreviousID:I

.field protected emProgression:I

.field protected emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

.field protected emSize:I

.field protected emTotSize:I

.field protected emUids:[I

.field protected emUserId:I

.field final synthetic this$0:Lcom/android/server/pm/EmergencyModePackageHandler;


# direct methods
.method constructor <init>(Lcom/android/server/pm/EmergencyModePackageHandler;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->TIMEOUT:J

    new-instance v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;-><init>(Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_2b0

    goto/16 :goto_2ad

    :pswitch_10
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "EMPkgHandler"

    const-string v3, "cancelEMHandlerSendPendingBroadcast : Nothing to do"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2ad

    :cond_23
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->removeMessages(I)V

    :cond_34
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->removeMessages(I)V

    :cond_45
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->removeMessages(I)V

    :cond_56
    const-string v0, "EMPkgHandler"

    const-string v3, "EM_CANCEL_SENDING_BROADCAST"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2ad

    :pswitch_66
    const-string v0, "EMPkgHandler"

    const-string v3, "EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v3, v3, Lcom/android/server/pm/EmergencyModePackageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->resetTask()V

    goto/16 :goto_2ad

    :pswitch_85
    const-string v0, "EMPkgHandler"

    const-string v3, "EM_CHECK_TIMEOUT_OF_BROADCAST"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2ad

    :pswitch_95
    const-string v0, "EMPkgHandler"

    const-string v8, "EM_SEND_PENDING_BROADCAST Start"

    invoke-static {v0, v8}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->removeMessages(I)V

    :cond_ad
    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v8, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    if-lt v0, v8, :cond_ed

    iput v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    iget v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    if-ne v0, v3, :cond_c4

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2ad

    :cond_c4
    const-string v0, "EMPkgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SKIP EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED emPrevioudID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] emID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2ad

    :cond_ed
    const/4 v0, 0x0

    move-object v4, v0

    :goto_ef
    const/16 v0, 0xa

    if-ge v3, v0, :cond_20d

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v8, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    if-ge v0, v8, :cond_20d

    const/4 v8, 0x0

    const/4 v9, -0x1

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    :try_start_100
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v11, v11, v12

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v4, v0

    if-eqz v4, :cond_11c

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    move v9, v0

    :cond_11c
    monitor-exit v10
    :try_end_11d
    .catchall {:try_start_100 .. :try_end_11d} :catchall_20a

    const/16 v0, 0x9

    if-eq v3, v0, :cond_128

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v11, v7

    if-ne v10, v11, :cond_129

    :cond_128
    const/4 v8, 0x1

    :cond_129
    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget v10, v10, v11

    if-ne v9, v10, :cond_19b

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    int-to-float v0, v0

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    int-to-float v10, v10

    div-float/2addr v0, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    if-eqz v8, :cond_170

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const-wide/32 v10, 0xea60

    invoke-virtual {v0, v5, v10, v11}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v13, v0, v10

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-boolean v14, v0, v10

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v15, v0, v10

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget v16, v0, v10

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    move-object/from16 v17, v0

    move/from16 v18, v10

    # invokes: Lcom/android/server/pm/EmergencyModePackageHandler;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    invoke-static/range {v12 .. v18}, Lcom/android/server/pm/EmergencyModePackageHandler;->access$100(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    goto :goto_195

    :cond_170
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v18, v10, v11

    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    iget v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-boolean v19, v10, v11

    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v20, v10, v11

    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    iget v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget v21, v10, v11

    const/16 v22, 0x0

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    move-object/from16 v17, v0

    move/from16 v23, v10

    # invokes: Lcom/android/server/pm/EmergencyModePackageHandler;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    invoke-static/range {v17 .. v23}, Lcom/android/server/pm/EmergencyModePackageHandler;->access$100(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    :goto_195
    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    goto :goto_206

    :cond_19b
    const-string v10, "EMPkgHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SKIP EM_SEND_PENDING_BROADCAST ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] / ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] name["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v13, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] curr["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]  now["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget v13, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]  emUserId["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v3, v0, :cond_1fa

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v10, v7

    if-ne v0, v10, :cond_201

    :cond_1fa
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    :cond_201
    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    :goto_206
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_ef

    :catchall_20a
    move-exception v0

    :try_start_20b
    monitor-exit v10
    :try_end_20c
    .catchall {:try_start_20b .. :try_end_20c} :catchall_20a

    throw v0

    :cond_20d
    const-string v0, "EMPkgHandler"

    const-string v3, "EM_SEND_PENDING_BROADCAST End"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2ad

    :pswitch_216
    const-string v0, "EMPkgHandler"

    const-string v5, "EM_MAKE_PENDING_BROADCAST Start"

    invoke-static {v0, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->initForPendingBroadcast(I)V

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    if-eqz v0, :cond_2a5

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->size()I

    move-result v0

    iput v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    if-gtz v0, :cond_25e

    const-string v0, "EMPkgHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pending size ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] EM_MAKE_PENDING_BROADCAST Cancel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_25e
    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    new-array v0, v0, [I

    iput-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    new-array v0, v0, [Z

    iput-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    new-array v0, v0, [I

    iput-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v3, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_281
    iget-object v7, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v8, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    iget-object v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    iget-object v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget v13, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    # invokes: Lcom/android/server/pm/EmergencyModePackageHandler;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    invoke-static/range {v7 .. v13}, Lcom/android/server/pm/EmergencyModePackageHandler;->access$000(Lcom/android/server/pm/EmergencyModePackageHandler;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v0

    iput v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    monitor-exit v3
    :try_end_296
    .catchall {:try_start_281 .. :try_end_296} :catchall_2a2

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    if-lez v0, :cond_2a5

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    goto :goto_2a5

    :catchall_2a2
    move-exception v0

    :try_start_2a3
    monitor-exit v3
    :try_end_2a4
    .catchall {:try_start_2a3 .. :try_end_2a4} :catchall_2a2

    throw v0

    :cond_2a5
    :goto_2a5
    const-string v0, "EMPkgHandler"

    const-string v3, "EM_MAKE_PENDING_BROADCAST End"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_2ad
    return-void

    nop

    nop

    :pswitch_data_2b0
    .packed-switch 0x1
        :pswitch_216
        :pswitch_95
        :pswitch_85
        :pswitch_66
        :pswitch_10
    .end packed-switch
.end method

.method public getProgressionOfPackageChanged()I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    nop

    return-void

    :catchall_9
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw v1
.end method

.method public initForPendingBroadcast(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->makeNewID()V

    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iput p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    return-void
.end method

.method public isCanceled()Z
    .registers 3

    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    iget v1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public makeNewID()V
    .registers 4

    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    const-string v0, "EMPkgHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeNewID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetTask()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->makeNewID()V

    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    const-string v0, "EMPkgHandler"

    const-string v1, "EMPackageHandler memory references are released"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
