.class final Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;
.super Landroid/database/ContentObserver;
.source "ExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExclusiveTaskObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->registerObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->unregisterObserver()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->registerObserver_Internal(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->addObserver(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->updateSettingDB_Internal(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->clearIgnoreList()V

    return-void
.end method

.method private addObserver(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mMainHandler:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$300(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private clearIgnoreList()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mOnChangeIgnoreList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1700(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getValue(II)I
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # invokes: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->isVTU(I)Z
    invoke-static {v1, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;I)Z

    move-result v1

    const/16 v2, 0x3a

    const/16 v3, 0x39

    if-nez v1, :cond_6f

    if-eq p2, v3, :cond_6f

    if-ne p2, v2, :cond_12

    goto :goto_6f

    :cond_12
    const/4 v1, 0x0

    if-nez p1, :cond_32

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget-object v3, v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_6e

    :cond_32
    const/4 v2, 0x1

    if-ne p1, v2, :cond_52

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget-object v3, v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_6e

    :cond_52
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget-object v3, v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_6e
    return v0

    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "enabled_accessibility_services"

    const/4 v5, -0x2

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b3

    if-ne p2, v3, :cond_8e

    const-string v2, "com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const/4 v0, 0x1

    goto :goto_b3

    :cond_8e
    if-ne p2, v2, :cond_9a

    const-string v2, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const/4 v0, 0x1

    goto :goto_b3

    :cond_9a
    const-string v2, "com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b2

    const-string v2, "com.samsung.accessibility.universalswitch.UniversalSwitchService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b2

    const-string v2, "com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b3

    :cond_b2
    const/4 v0, 0x1

    :cond_b3
    :goto_b3
    return v0
.end method

.method private registerObserver()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    const/4 v3, -0x1

    if-ge v2, v0, :cond_32

    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # invokes: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->isVTU(I)Z
    invoke-static {v4, v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;I)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_2f

    :cond_18
    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget v5, v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    if-eq v5, v3, :cond_2f

    iget v3, v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    iget-object v5, v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->registerObserver_Internal(ILjava/lang/String;)V

    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_32
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "enabled_accessibility_services"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "accreset_state"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerObserver_Internal(ILjava/lang/String;)V
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_26

    goto :goto_24

    :pswitch_6
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_24

    :pswitch_10
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_24

    :pswitch_1a
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method

.method private shouldIgnoreDBUpdate(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mOnChangeIgnoreList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1700(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    const/4 v1, 0x0

    return v1

    :cond_13
    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mOnChangeIgnoreList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1700(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method

.method private unregisterObserver()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateSettingDB_Internal(III)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    const-string v1, "ExclusiveTaskService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ExclusiveTask]updateSettingDB_Internal : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1800(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # invokes: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->isVTU(I)Z
    invoke-static {v1, p1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;I)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3a

    const/16 v4, 0x39

    if-nez v1, :cond_ae

    if-eq p1, v4, :cond_ae

    if-ne p1, v3, :cond_50

    goto :goto_ae

    :cond_50
    iget v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    const/4 v3, 0x0

    if-nez v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    if-nez p2, :cond_64

    goto :goto_65

    :cond_64
    move v3, p3

    :goto_65
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11b

    :cond_6a
    iget v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    if-ne v1, v2, :cond_83

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    if-nez p2, :cond_7d

    goto :goto_7e

    :cond_7d
    move v3, p3

    :goto_7e
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11b

    :cond_83
    iget v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11b

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    iget-object v2, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mHasSoftNaviBar:Z
    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$700(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Z

    move-result v2

    if-eqz v2, :cond_98

    const/16 v2, 0x24

    if-ne p1, v2, :cond_98

    const/4 v1, 0x2

    :cond_98
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    if-nez p2, :cond_a8

    move v4, v1

    goto :goto_a9

    :cond_a8
    move v4, p3

    :goto_a9
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11b

    :cond_ae
    :goto_ae
    const/16 v1, 0x20

    const/16 v5, 0x10

    const/16 v6, 0x2710

    const/16 v7, 0x40

    const/16 v8, 0x800

    const/16 v9, 0x1000

    if-ne p2, v2, :cond_f0

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    if-eq p1, v4, :cond_cf

    if-eq p1, v3, :cond_cf

    const/16 v3, 0x70

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    :cond_cf
    sparse-switch p1, :sswitch_data_146

    goto :goto_ef

    :sswitch_d3
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityManager;->semTurnOnAccessibilityService(I)V

    goto :goto_ef

    :sswitch_d7
    invoke-virtual {v2, v8}, Landroid/view/accessibility/AccessibilityManager;->semTurnOnAccessibilityService(I)V

    goto :goto_ef

    :sswitch_db
    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityManager;->semTurnOnAccessibilityService(I)V

    goto :goto_ef

    :sswitch_df
    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I
    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1900(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)I

    move-result v3

    if-ne v3, v6, :cond_eb

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityManager;->semTurnOnAccessibilityService(I)V

    goto :goto_ef

    :cond_eb
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->semTurnOnAccessibilityService(I)V

    nop

    :goto_ef
    return-void

    :cond_f0
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    sparse-switch p1, :sswitch_data_158

    goto :goto_11a

    :sswitch_fe
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    goto :goto_11a

    :sswitch_102
    invoke-virtual {v2, v8}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    goto :goto_11a

    :sswitch_106
    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    goto :goto_11a

    :sswitch_10a
    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I
    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1900(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)I

    move-result v3

    if-ne v3, v6, :cond_116

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    goto :goto_11a

    :cond_116
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    nop

    :goto_11a
    nop

    :cond_11b
    :goto_11b
    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$2000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_144

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$2000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/ExclusiveTaskManagerService$PostProcess;

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$PostProcess;->doPostProcess(Landroid/content/Context;I)I

    :cond_144
    return-void

    nop

    :sswitch_data_146
    .sparse-switch
        0x0 -> :sswitch_df
        0x1 -> :sswitch_db
        0x39 -> :sswitch_d7
        0x3a -> :sswitch_d3
    .end sparse-switch

    :sswitch_data_158
    .sparse-switch
        0x0 -> :sswitch_10a
        0x1 -> :sswitch_106
        0x39 -> :sswitch_102
        0x3a -> :sswitch_fe
    .end sparse-switch
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 15

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "/"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ExclusiveTaskService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ExclusiveTask]onChange selfChange="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "enabled_accessibility_services"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_58

    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastAccessibilityServiceDBValue:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1200(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    return-void

    :cond_58
    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # setter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastAccessibilityServiceDBValue:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1202(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Ljava/lang/String;)Ljava/lang/String;

    :cond_5d
    const-string v3, "accreset_state"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "accreset_state"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_13a

    goto :goto_9a

    :pswitch_7b
    const-string v3, "ExclusiveTaskService"

    const-string v4, "[ExclusiveTask]Reset Done"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # invokes: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->RemakeTaskArray()V
    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)V

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # setter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mNowDBReset:Z
    invoke-static {v3, v5}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1302(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Z)Z

    return-void

    :pswitch_8d
    const-string v3, "ExclusiveTaskService"

    const-string v5, "[ExclusiveTask]Reset Starting"

    invoke-static {v3, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # setter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mNowDBReset:Z
    invoke-static {v3, v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1302(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Z)Z

    return-void

    :cond_9a
    :goto_9a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "secure"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a9

    move v6, v5

    goto :goto_b4

    :cond_a9
    const-string v6, "global"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    move v6, v4

    goto :goto_b4

    :cond_b3
    const/4 v6, 0x2

    :goto_b4
    iget-object v7, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->getId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->shouldIgnoreDBUpdate(I)Z

    move-result v7

    if-eqz v7, :cond_c6

    return-void

    :cond_c6
    const/4 v7, -0x1

    if-eq v0, v7, :cond_130

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->getValue(II)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    iget-object v9, v9, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mHasSoftNaviBar:Z
    invoke-static {v9}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$700(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Z

    move-result v9

    if-eqz v9, :cond_de

    const/16 v9, 0x24

    if-ne v0, v9, :cond_de

    const/4 v8, 0x2

    :cond_de
    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPreProcessList:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1500(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_10c

    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPreProcessList:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1500(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/sepunion/ExclusiveTaskManagerService$PreProcess;

    iget-object v10, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v10

    if-ne v7, v8, :cond_108

    move v11, v5

    goto :goto_109

    :cond_108
    move v11, v4

    :goto_109
    invoke-interface {v9, v10, v11}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$PreProcess;->doPreProcess(Landroid/content/Context;I)I

    :cond_10c
    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    if-ne v7, v8, :cond_112

    move v4, v5

    nop

    :cond_112
    # invokes: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->updateTaskStateLocked(III)V
    invoke-static {v9, v0, v4, v7}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1600(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;III)V

    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget-boolean v9, v4, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mNeedToNotify:Z

    if-eqz v9, :cond_12f

    new-instance v9, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver$1;

    invoke-direct {v9, p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver$1;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;)V

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v9, v5}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_12f
    goto :goto_137

    :cond_130
    const-string v4, "ExclusiveTaskService"

    const-string v5, "[ExclusiveTask] Do nothing because the module is not managed by Exclusive Task."

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_137
    return-void

    nop

    nop

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_7b
    .end packed-switch
.end method
