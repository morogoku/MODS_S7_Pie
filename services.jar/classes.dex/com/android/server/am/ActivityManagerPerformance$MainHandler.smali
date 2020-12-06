.class final Lcom/android/server/am/ActivityManagerPerformance$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerPerformance;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1f

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_14

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    :cond_14
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_1f
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_114

    goto/16 :goto_112

    :pswitch_27
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_41

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received MSG_CFMS_HINT_AMS_HOME pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const-string v2, "AMS_APP_HOME"

    invoke-static {v2, v1}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_112

    :pswitch_48
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_62

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received MSG_CFMS_HINT_AMS_SWITCH pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    const-string v2, "AMS_APP_SWITCH"

    invoke-static {v2, v1}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_112

    :pswitch_69
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_83

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received MSG_CFMS_EXEC_ACTIVITY pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    const-string v2, "EXEC_ACTIVITY"

    invoke-static {v2, v1}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_112

    :pswitch_8a
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_a4

    const-string v2, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received MSG_ENABLE_ACT_RESUME_TAIL r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    # invokes: Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityManagerPerformance;->access$300(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_112

    :pswitch_aa
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_c4

    const-string v2, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received MSG_DISABLE_ACT_RESUME, r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    # invokes: Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityManagerPerformance;->access$000(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_112

    :pswitch_ca
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-nez v2, :cond_d6

    if-eqz v0, :cond_d6

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v2

    if-nez v2, :cond_ec

    :cond_d6
    const-string v2, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received MSG_DISABLE_ACT_START, r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ec
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    # invokes: Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityManagerPerformance;->access$100(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_112

    :pswitch_f2
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_10c

    const-string v2, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received MSG_DISABLE_APP_SWITCH, r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10c
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    # invokes: Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityManagerPerformance;->access$200(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V

    nop

    :goto_112
    return-void

    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_ca
        :pswitch_aa
        :pswitch_8a
        :pswitch_69
        :pswitch_48
        :pswitch_27
    .end packed-switch
.end method
