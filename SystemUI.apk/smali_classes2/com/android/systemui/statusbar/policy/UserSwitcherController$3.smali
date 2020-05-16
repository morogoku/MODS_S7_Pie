.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;
.super Landroid/content/BroadcastReceiver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mReceivedBackgroundUserIntent:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->mReceivedBackgroundUserIntent:Z

    return-void
.end method

.method private handleVzwUserChange(I)V
    .locals 4

    const-string v0, "UserSwitcherController"

    const-string v1, "handleVzwUserChange: "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.vzw.activationagent.intent.action.SET_MOBILEDATA_MULTIUSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.setupwizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.INVOKE_CARRIER_SETUP"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v0, 0x0

    const/16 v1, -0x2710

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, -0x2710

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$502(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    const-string v2, "android.intent.extra.user_handle"

    const/4 v5, -0x1

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-object v10, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    iget-object v10, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    if-ne v10, v2, :cond_2

    move v10, v3

    goto :goto_1

    :cond_2
    move v10, v7

    :goto_1
    iget-boolean v11, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eq v11, v10, :cond_3

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->copyWithIsCurrent(Z)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v10, :cond_4

    iget-boolean v11, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v12, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11, v12}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$602(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    iget-boolean v11, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    :cond_6
    :goto_2
    add-int/2addr v8, v3

    goto :goto_0

    :cond_7
    sget-object v3, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_VZW_PCO:Ljava/lang/String;

    const-string v7, "VZW_TABLET"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->handleVzwUserChange(I)V

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v3

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {p1, v3, v7}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$702(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    :cond_9
    if-eqz v5, :cond_a

    iget v3, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v3

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$702(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    :cond_a
    invoke-static {}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getInstance()Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->dismissUserSwitchingDialog(Landroid/os/Handler;)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->mReceivedBackgroundUserIntent:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->showDoneToast(Landroid/os/Handler;I)V

    :cond_b
    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_3

    :cond_d
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e

    return-void

    :cond_e
    goto :goto_3

    :cond_f
    const-string v2, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v2, :cond_10

    const-string v2, "UserSwitcherController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive Intent.ACTION_USER_BACKGROUND: mReceivedBackgroundUserIntent will be true: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->mReceivedBackgroundUserIntent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->mReceivedBackgroundUserIntent:Z

    :cond_10
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$900(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method
