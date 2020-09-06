.class Lcom/android/server/notification/DisplayToast$1;
.super Ljava/lang/Thread;
.source "DisplayToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/DisplayToast;->dump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/DisplayToast;


# direct methods
.method constructor <init>(Lcom/android/server/notification/DisplayToast;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/DisplayToast$1;->this$0:Lcom/android/server/notification/DisplayToast;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/ToastLog.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_7
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_55

    const/4 v2, 0x0

    :try_start_15
    iget-object v4, p0, Lcom/android/server/notification/DisplayToast$1;->this$0:Lcom/android/server/notification/DisplayToast;

    # getter for: Lcom/android/server/notification/DisplayToast;->logList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/notification/DisplayToast;->access$000(Lcom/android/server/notification/DisplayToast;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_44
    .catchall {:try_start_15 .. :try_end_1c} :catchall_42

    :try_start_1c
    iget-object v5, p0, Lcom/android/server/notification/DisplayToast$1;->this$0:Lcom/android/server/notification/DisplayToast;

    # getter for: Lcom/android/server/notification/DisplayToast;->logList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/notification/DisplayToast;->access$000(Lcom/android/server/notification/DisplayToast;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_26

    :cond_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_3f

    const/4 v4, 0x1

    :try_start_38
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_44
    .catchall {:try_start_38 .. :try_end_3b} :catchall_42

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_55

    goto :goto_5b

    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v3
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_42} :catch_44
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v3

    goto :goto_46

    :catch_44
    move-exception v2

    :try_start_45
    throw v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_42

    :goto_46
    if-eqz v2, :cond_51

    :try_start_48
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_55

    goto :goto_54

    :catch_4c
    move-exception v4

    :try_start_4d
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_54

    :cond_51
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    :goto_54
    throw v3
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_55} :catch_55

    :catch_55
    move-exception v1

    const-string v2, "ToastLog"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5b
    return-void
.end method
