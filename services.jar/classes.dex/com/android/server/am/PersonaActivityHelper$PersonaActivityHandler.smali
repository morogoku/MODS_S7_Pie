.class Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;
.super Landroid/os/Handler;
.source "PersonaActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PersonaActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaActivityHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaActivityHandler"


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PersonaActivityHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PersonaActivityHelper;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b8

    goto/16 :goto_b6

    :pswitch_b
    iget v4, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    iget-object v5, v0, Lcom/android/server/am/PersonaActivityHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    invoke-virtual {v0}, Lcom/android/server/am/PersonaActivityHelper;->getStacks()Ljava/util/ArrayList;

    move-result-object v0

    move-object v6, v0

    if-eqz v6, :cond_8f

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    move-object v9, v0

    if-eqz v9, :cond_8b

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    move-object v11, v0

    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object v12, v0

    const/4 v0, 0x0

    :goto_4b
    move v13, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_87

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v14, v0

    if-eqz v14, :cond_82

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->userId:I
    :try_end_5d
    .catchall {:try_start_12 .. :try_end_5d} :catchall_94

    if-ne v0, v4, :cond_82

    :try_start_5f
    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    iget-object v0, v0, Lcom/android/server/am/PersonaActivityHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    const/16 v3, 0x10

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityManagerService;->semRemoveTask(II)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6a} :catch_6b
    .catchall {:try_start_5f .. :try_end_6a} :catchall_94

    goto :goto_87

    :catch_6b
    move-exception v0

    :try_start_6c
    const-string v3, "PersonaActivityHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to removeTask exception "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    add-int/lit8 v0, v13, 0x1

    move-object/from16 v2, p1

    goto :goto_4b

    :cond_87
    :goto_87
    nop

    move-object/from16 v2, p1

    goto :goto_3a

    :cond_8b
    nop

    move-object/from16 v2, p1

    goto :goto_22

    :cond_8f
    monitor-exit v5
    :try_end_90
    .catchall {:try_start_6c .. :try_end_90} :catchall_94

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_b6

    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v5
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_9a
    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    iget-object v0, v0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/am/PersonaActivityHelper;

    iget-object v2, v2, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    const v3, 0x104049d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    nop

    :goto_b6
    return-void

    nop

    :pswitch_data_b8
    .packed-switch 0x259
        :pswitch_9a
        :pswitch_b
    .end packed-switch
.end method
