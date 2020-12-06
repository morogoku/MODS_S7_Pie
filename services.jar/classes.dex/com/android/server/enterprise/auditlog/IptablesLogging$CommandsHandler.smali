.class Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;
.super Landroid/os/Handler;
.source "IptablesLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/IptablesLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommandsHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    # getter for: Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->access$000()Landroid/net/INetd;

    move-result-object v3

    if-nez v3, :cond_24

    # invokes: Lcom/android/server/enterprise/auditlog/IptablesLogging;->connectNativeNetdService()V
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->access$100()V

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_3a
    # getter for: Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->access$000()Landroid/net/INetd;

    move-result-object v6

    if-eqz v6, :cond_47

    # getter for: Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->access$000()Landroid/net/INetd;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/net/INetd;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_47} :catch_4d
    .catchall {:try_start_3a .. :try_end_47} :catchall_4b

    :cond_47
    :goto_47
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_69

    :catchall_4b
    move-exception v6

    goto :goto_6a

    :catch_4d
    move-exception v6

    :try_start_4e
    const-string v7, "IptablesLogging"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to bind: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_4e .. :try_end_68} :catchall_4b

    goto :goto_47

    :goto_69
    goto :goto_24

    :goto_6a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_6e
    return-void
.end method
